package kopo.poly.service.impl;

import kopo.poly.dto.NoticeDTO;
import kopo.poly.persistance.mapper.INoticeMapper;
import kopo.poly.service.INoticeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Slf4j
@RequiredArgsConstructor
@Service
public class NoticeService implements INoticeService {

    // @RequiredArgsConstructor으로 생성자를 자동으로 생성함
    // noticeMapper 변수에 이미 메모리에 올라간 INoticeMapper 객체를 넣어줌
    // 예전에는 autowired 어노테이션을 통해 생성자를 설정했지만, 이제는 생성자를 통해 객체를 주입시킴
    private final INoticeMapper noticeMapper;
    @Override
    public List<NoticeDTO> getNoticeList() throws Exception {

        log.info(this.getClass().getName() + ".getNoticeList Start!");

        return noticeMapper.getNoticeList(); // -> Mapper 호출(SQL문 호출함)
    }

    @Transactional // -> 데이터의 변화(등록,수정,삭제)가 발생하는 함수는 반드시 트랜잭션 처리가 필요함
                   // 트랜잭션 설정으로 ACID를 적용시켜야함 Transactional 어노테이션으로 Commit과 rollback을 지원
    @Override
    public NoticeDTO getNoticeInfo(NoticeDTO pDTO, boolean type) throws Exception {

        log.info(this.getClass().getName() + ".getNoticeInfo Start!");

        //상세보기 할 때 마다, 조회수 증가하기(수정보기는 하지 않고)
        if (type) { // -> 조회수 증가에 따라 트랜잭션 필요
            log.info("Update ReadCNT");
            noticeMapper.updateNoticeReadCnt(pDTO);
        }
        return noticeMapper.getNoticeInfo(pDTO); // -> Mapper 호출(SQL문 호출함)
    }

    @Transactional
    @Override
    public void insertNoticeInfo(NoticeDTO pDTO) throws Exception {

        log.info(this.getClass().getName() + ".insertNoticeInfo Start!");

        noticeMapper.insertNoticeInfo(pDTO);

    }

    @Transactional
    @Override
    public void updateNoticeInfo(NoticeDTO pDTO) throws Exception {

        log.info(this.getClass().getName() + ".updateNoticeInfo Start!");

        noticeMapper.updateNoticeInfo(pDTO);

    }

    @Transactional
    @Override
    public void deleteNoticeInfo(NoticeDTO pDTO) throws Exception {

        log.info(this.getClass().getName() + ".deleteNoticeInfo Start!");

        noticeMapper.deleteNoticeInfo(pDTO);

    }
}
