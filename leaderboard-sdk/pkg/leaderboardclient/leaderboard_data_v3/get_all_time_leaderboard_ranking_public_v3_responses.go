// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_data_v3

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
)

// GetAllTimeLeaderboardRankingPublicV3Reader is a Reader for the GetAllTimeLeaderboardRankingPublicV3 structure.
type GetAllTimeLeaderboardRankingPublicV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAllTimeLeaderboardRankingPublicV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAllTimeLeaderboardRankingPublicV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetAllTimeLeaderboardRankingPublicV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAllTimeLeaderboardRankingPublicV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAllTimeLeaderboardRankingPublicV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAllTimeLeaderboardRankingPublicV3OK creates a GetAllTimeLeaderboardRankingPublicV3OK with default headers values
func NewGetAllTimeLeaderboardRankingPublicV3OK() *GetAllTimeLeaderboardRankingPublicV3OK {
	return &GetAllTimeLeaderboardRankingPublicV3OK{}
}

/*GetAllTimeLeaderboardRankingPublicV3OK handles this case with default header values.

  OK
*/
type GetAllTimeLeaderboardRankingPublicV3OK struct {
	Payload *leaderboardclientmodels.ModelsGetLeaderboardRankingResp
}

func (o *GetAllTimeLeaderboardRankingPublicV3OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingPublicV3OK  %+v", 200, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingPublicV3OK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GetAllTimeLeaderboardRankingPublicV3OK) GetPayload() *leaderboardclientmodels.ModelsGetLeaderboardRankingResp {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingPublicV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ModelsGetLeaderboardRankingResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllTimeLeaderboardRankingPublicV3BadRequest creates a GetAllTimeLeaderboardRankingPublicV3BadRequest with default headers values
func NewGetAllTimeLeaderboardRankingPublicV3BadRequest() *GetAllTimeLeaderboardRankingPublicV3BadRequest {
	return &GetAllTimeLeaderboardRankingPublicV3BadRequest{}
}

/*GetAllTimeLeaderboardRankingPublicV3BadRequest handles this case with default header values.

  Bad Request
*/
type GetAllTimeLeaderboardRankingPublicV3BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetAllTimeLeaderboardRankingPublicV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingPublicV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingPublicV3BadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GetAllTimeLeaderboardRankingPublicV3BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingPublicV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllTimeLeaderboardRankingPublicV3NotFound creates a GetAllTimeLeaderboardRankingPublicV3NotFound with default headers values
func NewGetAllTimeLeaderboardRankingPublicV3NotFound() *GetAllTimeLeaderboardRankingPublicV3NotFound {
	return &GetAllTimeLeaderboardRankingPublicV3NotFound{}
}

/*GetAllTimeLeaderboardRankingPublicV3NotFound handles this case with default header values.

  Not Found
*/
type GetAllTimeLeaderboardRankingPublicV3NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetAllTimeLeaderboardRankingPublicV3NotFound) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingPublicV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingPublicV3NotFound) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GetAllTimeLeaderboardRankingPublicV3NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingPublicV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllTimeLeaderboardRankingPublicV3InternalServerError creates a GetAllTimeLeaderboardRankingPublicV3InternalServerError with default headers values
func NewGetAllTimeLeaderboardRankingPublicV3InternalServerError() *GetAllTimeLeaderboardRankingPublicV3InternalServerError {
	return &GetAllTimeLeaderboardRankingPublicV3InternalServerError{}
}

/*GetAllTimeLeaderboardRankingPublicV3InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetAllTimeLeaderboardRankingPublicV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetAllTimeLeaderboardRankingPublicV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingPublicV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingPublicV3InternalServerError) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GetAllTimeLeaderboardRankingPublicV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingPublicV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
