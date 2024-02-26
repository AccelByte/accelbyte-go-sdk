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

// GetCurrentCycleLeaderboardRankingPublicV3Reader is a Reader for the GetCurrentCycleLeaderboardRankingPublicV3 structure.
type GetCurrentCycleLeaderboardRankingPublicV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetCurrentCycleLeaderboardRankingPublicV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetCurrentCycleLeaderboardRankingPublicV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetCurrentCycleLeaderboardRankingPublicV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetCurrentCycleLeaderboardRankingPublicV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetCurrentCycleLeaderboardRankingPublicV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetCurrentCycleLeaderboardRankingPublicV3OK creates a GetCurrentCycleLeaderboardRankingPublicV3OK with default headers values
func NewGetCurrentCycleLeaderboardRankingPublicV3OK() *GetCurrentCycleLeaderboardRankingPublicV3OK {
	return &GetCurrentCycleLeaderboardRankingPublicV3OK{}
}

/*GetCurrentCycleLeaderboardRankingPublicV3OK handles this case with default header values.

  Cycle leaderboard ranking data retrieved
*/
type GetCurrentCycleLeaderboardRankingPublicV3OK struct {
	Payload *leaderboardclientmodels.ModelsGetLeaderboardRankingResp
}

func (o *GetCurrentCycleLeaderboardRankingPublicV3OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}][%d] getCurrentCycleLeaderboardRankingPublicV3OK  %+v", 200, o.ToJSONString())
}

func (o *GetCurrentCycleLeaderboardRankingPublicV3OK) ToJSONString() string {
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

func (o *GetCurrentCycleLeaderboardRankingPublicV3OK) GetPayload() *leaderboardclientmodels.ModelsGetLeaderboardRankingResp {
	return o.Payload
}

func (o *GetCurrentCycleLeaderboardRankingPublicV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetCurrentCycleLeaderboardRankingPublicV3BadRequest creates a GetCurrentCycleLeaderboardRankingPublicV3BadRequest with default headers values
func NewGetCurrentCycleLeaderboardRankingPublicV3BadRequest() *GetCurrentCycleLeaderboardRankingPublicV3BadRequest {
	return &GetCurrentCycleLeaderboardRankingPublicV3BadRequest{}
}

/*GetCurrentCycleLeaderboardRankingPublicV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetCurrentCycleLeaderboardRankingPublicV3BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentCycleLeaderboardRankingPublicV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}][%d] getCurrentCycleLeaderboardRankingPublicV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetCurrentCycleLeaderboardRankingPublicV3BadRequest) ToJSONString() string {
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

func (o *GetCurrentCycleLeaderboardRankingPublicV3BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentCycleLeaderboardRankingPublicV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetCurrentCycleLeaderboardRankingPublicV3NotFound creates a GetCurrentCycleLeaderboardRankingPublicV3NotFound with default headers values
func NewGetCurrentCycleLeaderboardRankingPublicV3NotFound() *GetCurrentCycleLeaderboardRankingPublicV3NotFound {
	return &GetCurrentCycleLeaderboardRankingPublicV3NotFound{}
}

/*GetCurrentCycleLeaderboardRankingPublicV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>71230</td><td>leaderboard configuration not found</td></tr><tr><td>71235</td><td>leaderboard ranking not found</td></tr></table>
*/
type GetCurrentCycleLeaderboardRankingPublicV3NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentCycleLeaderboardRankingPublicV3NotFound) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}][%d] getCurrentCycleLeaderboardRankingPublicV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetCurrentCycleLeaderboardRankingPublicV3NotFound) ToJSONString() string {
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

func (o *GetCurrentCycleLeaderboardRankingPublicV3NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentCycleLeaderboardRankingPublicV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetCurrentCycleLeaderboardRankingPublicV3InternalServerError creates a GetCurrentCycleLeaderboardRankingPublicV3InternalServerError with default headers values
func NewGetCurrentCycleLeaderboardRankingPublicV3InternalServerError() *GetCurrentCycleLeaderboardRankingPublicV3InternalServerError {
	return &GetCurrentCycleLeaderboardRankingPublicV3InternalServerError{}
}

/*GetCurrentCycleLeaderboardRankingPublicV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>71236</td><td>leaderboard ranking count failed</td></tr></table>
*/
type GetCurrentCycleLeaderboardRankingPublicV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentCycleLeaderboardRankingPublicV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}][%d] getCurrentCycleLeaderboardRankingPublicV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetCurrentCycleLeaderboardRankingPublicV3InternalServerError) ToJSONString() string {
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

func (o *GetCurrentCycleLeaderboardRankingPublicV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentCycleLeaderboardRankingPublicV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
