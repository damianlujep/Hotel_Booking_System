package pl.bookingsystem.app.validator;

import pl.bookingsystem.app.dto.MemberDto;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PasswordMatchesValidator implements ConstraintValidator<PasswordMatches, Object> {
    @Override
    public void initialize(final PasswordMatches constraintAnnotation) {

    }

    @Override
    public boolean isValid(final Object obj, final ConstraintValidatorContext context) {
        final MemberDto memberDto = (MemberDto) obj;
        return memberDto.getPassword().equals(memberDto.getRePassword());
    }
}
