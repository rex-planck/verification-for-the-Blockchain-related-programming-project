# Cryptology Practice: From Classical to Modern Systems

本项目包含了密码学课程实验中核心算法的 Python 实现。内容涵盖了从古典代换密码到现代公钥密码体系、哈希函数以及数字认证系统的全过程。

## 📂 目录结构与模块说明

仓库采用模块化设计，将不同功能的算法划分为以下六大目录：

* **01_classical_ciphers**: 包含基础的代换与换位加密技术。
* **02_symmetric_encryption**: 工业级分组加密算法，支持 AES (CBC) 和 3DES (ECB)。
* **03_asymmetric_encryption**: 基于数学难题的公钥加密系统（RSA 与 ElGamal）。
* **04_key_exchange**: 安全信道中的密钥协商协议（Diffie-Hellman）。
* **05_hashing_and_auth**: 数据完整性校验及安全的密码存储方案（Scrypt + Salt）。
* **06_digital_signatures**: 基于公钥体系的身份认证与签名校验。

---

## 🔬 数学原理与核心实现

### 1. 非对称加密 (Asymmetric Encryption)

#### RSA 算法
基于大整数分解难题。其核心步骤如下：
1. **密钥生成**：选择大素数 $p, q$，计算 $N = p \times q$ 及 $\phi(N) = (p-1)(q-1)$。
2. **公私钥对**：选择 $e = 65537$，并计算逆元 $d \equiv e^{-1} \pmod{\phi(N)}$。
3. **加密与解密**：
    * 加密：$c = m^e \pmod N$
    * 解密：$m = c^d \pmod N$



#### ElGamal 算法
基于离散对数难题。系统选取大素数 $p$ 和原根 $\alpha$：
* **加密**：随机选取 $k$，生成密文对 $(r, t)$，其中 $r = \alpha^k \pmod p$，$t = m \cdot \beta^k \pmod p$。
* **解密**：利用私钥 $a$ 计算 $m = t \cdot (r^a)^{-1} \pmod p$。

### 2. 数字签名 (Digital Signatures)

#### ElGamal 签名
发送方生成 $(r, s)$ 作为签名，接收方通过验证下式来确认身份：
$$\beta^r \cdot r^s \equiv \alpha^m \pmod p$$
其中 $s = (m - a \cdot r) \cdot k^{-1} \pmod{p-1}$。

### 3. 安全哈希与认证 (Hashing & Auth)

* **多重哈希校验**：支持 MD5 和 SHA256 算法，并提供 Hex 和 Base64 两种输出格式。
* **Scrypt 密码存储系统**：采用加盐（Salt）机制，使用 `os.urandom(16)` 生成随机盐值，通过 Scrypt 派生函数增强对抗暴力破解的能力。
    * Scrypt 配置参数： $n=16384, r=8, p=1$。

---

## 🛠️ 环境依赖与使用

### 依赖库
项目运行需要 Python 3.x 环境，并安装以下库：
```bash
pip install sympy pycryptodome
