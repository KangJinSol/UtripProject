package trip.dto;

import org.apache.ibatis.type.Alias;

@Alias("board")
public class BoardDTO {
	private int boardNo;
	private String id;
	private String title;
	private String content;
	private String writeDate;
	private int boardLike;
	private int boardCount;
	private int commentCount;

	public BoardDTO(int boardNo, String id, String title, String content, String writeDate, int boardLike,
			int boardCount, int commentCount) {
		super();
		this.boardNo = boardNo;
		this.id = id;
		this.title = title;
		this.content = content;
		this.writeDate = writeDate;
		this.boardLike = boardLike;
		this.boardCount = boardCount;
		this.commentCount = commentCount;
	}

	public BoardDTO(String id, String title, String content) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
	}

	public BoardDTO(int boardNo, String id, String title, String content, String writeDate, int boardLike,
			int boardCount) {
		super();
		this.boardNo = boardNo;
		this.id = id;
		this.title = title;
		this.content = content;
		this.writeDate = writeDate;
		this.boardLike = boardLike;
		this.boardCount = boardCount;
	}

	public BoardDTO(int boardNo, String id, String title, String content) {
		super();
		this.boardNo = boardNo;
		this.id = id;
		this.title = title;
		this.content = content;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}

	public int getBoardLike() {
		return boardLike;
	}

	public void setBoardLike(int boardLike) {
		this.boardLike = boardLike;
	}

	public int getCommentCount() {
		return commentCount;
	}

	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getBoardCount() {
		return boardCount;
	}

	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
	}

	@Override
	public String toString() {
		return "BoardDTO [boardNo=" + boardNo + ", id=" + id + ", title=" + title + ", content=" + content
				+ ", writeDate=" + writeDate + ", boardLike=" + boardLike + ", boardCount=" + boardCount
				+ ", commentCount=" + commentCount + "]";
	}

}
