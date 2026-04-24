export HOST=""    # set "_linux" if using linux system, and leave blank if using wsl
export ARCH=rv_32imac

arch_list=( \
# rv_32i \
# rv_32im \
# rv_32imc \
rv_32imac \
);    # implemented architectures can be added here.

## test for rv_32i arch
  rv_32i_test=( \
  Arithematic_basic_test \
  Riscv_jump_stress_test \
  Riscv_loop_test \
  Riscv_mmu_stress_test \
  Riscv_rand_instr_test \
  Riscv_rand_jump_test \
  );

## test for rv_32im arch
  rv_32im_test=( \
  Basic_arithmetic_test \
  jump_stress \
  loop_test \
  memory_stress \
  rand_instr \
  rand_jum_test \
  );

## test for rv_32imc arch
  rv_32imc_test=( \
  riscv_arithmetic_basic_test \
  riscv_jump_stress_test \
  riscv_loop_test \
  riscv_mmu_stress_test \
  riscv_rand_instr_test \
  riscv_rand_jump_test \
  );

  rv_32imac_test=( \
  riscv_amo \
  )
  
## template for tests description of different architecture 
# export ARCH_test=( \
  # test0 \
  # test1 \
# );

[ ! -d output ]&& mkdir output/

for i in "${arch_list[@]}"; do
  for j in "${i}_test[@]"; do 
    for test_name in "${!j}"; do 
      for ((k=1;k<10;k++)); do
        export  ARCH=$i;
        echo ${ARCH};
        export  TEST="${test_name}";
        echo ${TEST};
        export  SEED=$k;
        echo ${SEED};
        source ./test.sh
      done
    done
  done
done

