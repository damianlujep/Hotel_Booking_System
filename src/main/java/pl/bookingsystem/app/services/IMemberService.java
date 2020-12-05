package pl.bookingsystem.app.services;

import pl.bookingsystem.app.dto.MemberDto;
import pl.bookingsystem.app.entity.Member;
import pl.bookingsystem.app.error.UserAlreadyExistException;

public interface IMemberService {
    Member registerNewMember(MemberDto memberDto) throws UserAlreadyExistException;
    Member findMemberMyEmail(String email);
}
