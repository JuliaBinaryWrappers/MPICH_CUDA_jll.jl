# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule MPICH_CUDA_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("MPICH_CUDA")
JLLWrappers.@generate_main_file("MPICH_CUDA", UUID("be7bd464-f152-51b7-b3a2-8e7b69765627"))
end  # module MPICH_CUDA_jll
