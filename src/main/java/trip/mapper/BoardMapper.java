package trip.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import trip.dto.BoardDTO;
import trip.dto.CommentDTO;

@Mapper
public interface BoardMapper {
	
	List<BoardDTO> selectBoardList(int page);
	int selectCount();
	BoardDTO selectBoard(int boardNo);
	List<CommentDTO> selectBoardComment(int boardNo);
	int newBoardNo();
	int insertBoard(BoardDTO dto);
	void addBoardLike(HashMap<String, Object> map);
	int insertBoardComment(CommentDTO dto);
	List<BoardDTO> selectSearchBoard(HashMap<String, Object> map);
	void addCount(int boardNo);
	int deleteBoard(int boardNo);
	int updateBoard(BoardDTO dto);
	BoardDTO selectId(String id);
}
