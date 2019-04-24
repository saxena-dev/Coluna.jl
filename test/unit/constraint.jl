function constraint_unit_tests()
    constr_data_getters_and_setters_tests()
    moi_constr_record_getters_and_setters_tests()
    constraint_getters_and_setters_tests()
end

function constr_data_getters_and_setters_tests()

    c_data = CL.ConstrData(
        ; rhs = -13.0, kind = CL.Facultative, sense = CL.Equal,
        inc_val = -12.0, is_active = false, is_explicit = false
    )

    @test CL.get_rhs(c_data) == -13.0
    @test CL.is_active(c_data) == false
    @test CL.is_explicit(c_data) == false
    @test CL.get_inc_val(c_data) == -12.0
    @test CL.get_sense(c_data) == CL.Equal
    @test CL.get_kind(c_data) == CL.Facultative

    CL.set_rhs!(c_data, 90.0)
    CL.set_kind!(c_data, CL.Core)
    CL.set_sense!(c_data, CL.Less)
    CL.set_inc_val!(c_data, 90.0)
    CL.set_is_active!(c_data, true)
    CL.set_is_explicit!(c_data, true)

    @test CL.get_rhs(c_data) == 90.0
    @test CL.get_kind(c_data) == CL.Core
    @test CL.get_sense(c_data) == CL.Less
    @test CL.get_inc_val(c_data) == 90.0
    @test CL.is_active(c_data) == true
    @test CL.is_explicit(c_data) == true

end

function moi_constr_record_getters_and_setters_tests()

end

function constraint_getters_and_setters_tests()

end
