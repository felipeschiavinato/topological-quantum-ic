import Microsoft.Quantum.Convert.*;
import Microsoft.Quantum.Math.*;

    operation Main() : Int {
        let max = 100;
        Message($"Amostrando um número aleatório entre 0 e {max}: ");
    
        // Gera um número aleatório dentro do intervalo 0..max.
        return GenerateRandomNumberInRange(max);
    }
    
    /// Gera um número aleatório entre 0 e `max`.
    operation GenerateRandomNumberInRange(max : Int) : Int {
        // Determina o número de bits necessários para representar `max` e armazena em
        // na variável `nBits`. Então gera `nBits` bits aleatórios que representarão
        // o número aleatório gerado.
        mutable bits = [];
        let nBits = BitSizeI(max);
        for idxBit in 1..nBits {
            set bits += [GenerateRandomBit()];
        }
        let sample = ResultArrayAsInt(bits);
    
        // Retorna o número aleatório se estiver dentro do intervalo solicitado.
        // Gera novamente se estiver fora do intervalo.
        return sample > max ? GenerateRandomNumberInRange(max) | sample;
    }
    
    operation GenerateRandomBit() : Result {
        // Aloca um qubit.
        use q = Qubit();
    
        // Define o qubit em superposição de 0 e 1 usando a operação Hadamard
        H(q);
    
        // Mede o valor do qubit usando a operação `M` e armazena o valor da
        // medição na variável `result`.
        let result = M(q);
    
        // Reinicia o qubit para o estado |0〉.
        Reset(q);
    
        // Retorna o resultado da medição.
        return result;
    }