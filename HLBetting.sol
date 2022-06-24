pragma solidity 0.8.7;

contract HLBetting 
{
  string public team0;
  string public team1;
  int public oddsForTeam0;
  int public oddsForTeam1;
  address owner;

  modifier onlyOwner ()
  {
      require(msg.sender == owner);
      _;
  }

  constructor(string memory _team0, string memory _team1, int  _oddsForTeam0, int  _oddsForTeam1) public
  {
    owner = msg.sender;
    team0 = _team0;
    team1 = _team1;
    oddsForTeam0 = _oddsForTeam0;
    oddsForTeam1 = _oddsForTeam1;
  }

  function updateOdds(int  _oddsForTeam0, int  _oddsForTeam1) public onlyOwner
  {
    oddsForTeam0 = _oddsForTeam0;
    oddsForTeam1 = _oddsForTeam1;
  }
}