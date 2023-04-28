// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_data

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

// GetAllTimeLeaderboardRankingPublicV2Reader is a Reader for the GetAllTimeLeaderboardRankingPublicV2 structure.
type GetAllTimeLeaderboardRankingPublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAllTimeLeaderboardRankingPublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAllTimeLeaderboardRankingPublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetAllTimeLeaderboardRankingPublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAllTimeLeaderboardRankingPublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetAllTimeLeaderboardRankingPublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAllTimeLeaderboardRankingPublicV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAllTimeLeaderboardRankingPublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v2/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAllTimeLeaderboardRankingPublicV2OK creates a GetAllTimeLeaderboardRankingPublicV2OK with default headers values
func NewGetAllTimeLeaderboardRankingPublicV2OK() *GetAllTimeLeaderboardRankingPublicV2OK {
	return &GetAllTimeLeaderboardRankingPublicV2OK{}
}

/*GetAllTimeLeaderboardRankingPublicV2OK handles this case with default header values.

  OK
*/
type GetAllTimeLeaderboardRankingPublicV2OK struct {
	Payload *leaderboardclientmodels.V2GetPublicLeaderboardRankingResponse
}

func (o *GetAllTimeLeaderboardRankingPublicV2OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v2/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingPublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingPublicV2OK) ToJSONString() string {
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

func (o *GetAllTimeLeaderboardRankingPublicV2OK) GetPayload() *leaderboardclientmodels.V2GetPublicLeaderboardRankingResponse {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingPublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.V2GetPublicLeaderboardRankingResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllTimeLeaderboardRankingPublicV2BadRequest creates a GetAllTimeLeaderboardRankingPublicV2BadRequest with default headers values
func NewGetAllTimeLeaderboardRankingPublicV2BadRequest() *GetAllTimeLeaderboardRankingPublicV2BadRequest {
	return &GetAllTimeLeaderboardRankingPublicV2BadRequest{}
}

/*GetAllTimeLeaderboardRankingPublicV2BadRequest handles this case with default header values.

  Bad Request
*/
type GetAllTimeLeaderboardRankingPublicV2BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetAllTimeLeaderboardRankingPublicV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v2/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingPublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingPublicV2BadRequest) ToJSONString() string {
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

func (o *GetAllTimeLeaderboardRankingPublicV2BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingPublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetAllTimeLeaderboardRankingPublicV2Unauthorized creates a GetAllTimeLeaderboardRankingPublicV2Unauthorized with default headers values
func NewGetAllTimeLeaderboardRankingPublicV2Unauthorized() *GetAllTimeLeaderboardRankingPublicV2Unauthorized {
	return &GetAllTimeLeaderboardRankingPublicV2Unauthorized{}
}

/*GetAllTimeLeaderboardRankingPublicV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetAllTimeLeaderboardRankingPublicV2Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetAllTimeLeaderboardRankingPublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v2/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingPublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingPublicV2Unauthorized) ToJSONString() string {
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

func (o *GetAllTimeLeaderboardRankingPublicV2Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingPublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetAllTimeLeaderboardRankingPublicV2Forbidden creates a GetAllTimeLeaderboardRankingPublicV2Forbidden with default headers values
func NewGetAllTimeLeaderboardRankingPublicV2Forbidden() *GetAllTimeLeaderboardRankingPublicV2Forbidden {
	return &GetAllTimeLeaderboardRankingPublicV2Forbidden{}
}

/*GetAllTimeLeaderboardRankingPublicV2Forbidden handles this case with default header values.

  Forbidden
*/
type GetAllTimeLeaderboardRankingPublicV2Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetAllTimeLeaderboardRankingPublicV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v2/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingPublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingPublicV2Forbidden) ToJSONString() string {
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

func (o *GetAllTimeLeaderboardRankingPublicV2Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingPublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetAllTimeLeaderboardRankingPublicV2NotFound creates a GetAllTimeLeaderboardRankingPublicV2NotFound with default headers values
func NewGetAllTimeLeaderboardRankingPublicV2NotFound() *GetAllTimeLeaderboardRankingPublicV2NotFound {
	return &GetAllTimeLeaderboardRankingPublicV2NotFound{}
}

/*GetAllTimeLeaderboardRankingPublicV2NotFound handles this case with default header values.

  Not Found
*/
type GetAllTimeLeaderboardRankingPublicV2NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetAllTimeLeaderboardRankingPublicV2NotFound) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v2/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingPublicV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingPublicV2NotFound) ToJSONString() string {
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

func (o *GetAllTimeLeaderboardRankingPublicV2NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingPublicV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetAllTimeLeaderboardRankingPublicV2InternalServerError creates a GetAllTimeLeaderboardRankingPublicV2InternalServerError with default headers values
func NewGetAllTimeLeaderboardRankingPublicV2InternalServerError() *GetAllTimeLeaderboardRankingPublicV2InternalServerError {
	return &GetAllTimeLeaderboardRankingPublicV2InternalServerError{}
}

/*GetAllTimeLeaderboardRankingPublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetAllTimeLeaderboardRankingPublicV2InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetAllTimeLeaderboardRankingPublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v2/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingPublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingPublicV2InternalServerError) ToJSONString() string {
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

func (o *GetAllTimeLeaderboardRankingPublicV2InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingPublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
