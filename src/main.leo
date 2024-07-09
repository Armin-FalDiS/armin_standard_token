import multi_token_support_program_v1.aleo;

program armin_standard_token.aleo {
    async transition main() -> Future {
        return finalize_main(multi_token_support_program_v1.aleo/register_token(
            28111996field,
            280553670990u128,
            280553670990u128,
            0u8,
            100_000_000_000u128,
            false,
            aleo1q6qstg8q8shwqf5m6q5fcenuwsdqsvp4hhsgfnx5chzjm3secyzqt9mxm8,
        ));
    }
    async function finalize_main(f: Future) {
        f.await();
    }

    async transition mint(amount: u128) -> Future {
        return finalize_mint(multi_token_support_program_v1.aleo/mint_public(
            28111996field,
            self.signer,
            amount,
            4_000_000_000u32,
        ));
    }
    async function finalize_mint(f: Future) {
        f.await();
    }
}
