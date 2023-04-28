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

// GetAllTimeLeaderboardRankingAdminV1Reader is a Reader for the GetAllTimeLeaderboardRankingAdminV1 structure.
type GetAllTimeLeaderboardRankingAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAllTimeLeaderboardRankingAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAllTimeLeaderboardRankingAdminV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetAllTimeLeaderboardRankingAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAllTimeLeaderboardRankingAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetAllTimeLeaderboardRankingAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAllTimeLeaderboardRankingAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAllTimeLeaderboardRankingAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAllTimeLeaderboardRankingAdminV1OK creates a GetAllTimeLeaderboardRankingAdminV1OK with default headers values
func NewGetAllTimeLeaderboardRankingAdminV1OK() *GetAllTimeLeaderboardRankingAdminV1OK {
	return &GetAllTimeLeaderboardRankingAdminV1OK{}
}

/*GetAllTimeLeaderboardRankingAdminV1OK handles this case with default header values.

  OK
*/
type GetAllTimeLeaderboardRankingAdminV1OK struct {
	Payload *leaderboardclientmodels.ModelsGetLeaderboardRankingResp
}

func (o *GetAllTimeLeaderboardRankingAdminV1OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingAdminV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingAdminV1OK) ToJSONString() string {
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

func (o *GetAllTimeLeaderboardRankingAdminV1OK) GetPayload() *leaderboardclientmodels.ModelsGetLeaderboardRankingResp {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingAdminV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetAllTimeLeaderboardRankingAdminV1BadRequest creates a GetAllTimeLeaderboardRankingAdminV1BadRequest with default headers values
func NewGetAllTimeLeaderboardRankingAdminV1BadRequest() *GetAllTimeLeaderboardRankingAdminV1BadRequest {
	return &GetAllTimeLeaderboardRankingAdminV1BadRequest{}
}

/*GetAllTimeLeaderboardRankingAdminV1BadRequest handles this case with default header values.

  Bad Request
*/
type GetAllTimeLeaderboardRankingAdminV1BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetAllTimeLeaderboardRankingAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingAdminV1BadRequest) ToJSONString() string {
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

func (o *GetAllTimeLeaderboardRankingAdminV1BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetAllTimeLeaderboardRankingAdminV1Unauthorized creates a GetAllTimeLeaderboardRankingAdminV1Unauthorized with default headers values
func NewGetAllTimeLeaderboardRankingAdminV1Unauthorized() *GetAllTimeLeaderboardRankingAdminV1Unauthorized {
	return &GetAllTimeLeaderboardRankingAdminV1Unauthorized{}
}

/*GetAllTimeLeaderboardRankingAdminV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetAllTimeLeaderboardRankingAdminV1Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetAllTimeLeaderboardRankingAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingAdminV1Unauthorized) ToJSONString() string {
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

func (o *GetAllTimeLeaderboardRankingAdminV1Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetAllTimeLeaderboardRankingAdminV1Forbidden creates a GetAllTimeLeaderboardRankingAdminV1Forbidden with default headers values
func NewGetAllTimeLeaderboardRankingAdminV1Forbidden() *GetAllTimeLeaderboardRankingAdminV1Forbidden {
	return &GetAllTimeLeaderboardRankingAdminV1Forbidden{}
}

/*GetAllTimeLeaderboardRankingAdminV1Forbidden handles this case with default header values.

  Forbidden
*/
type GetAllTimeLeaderboardRankingAdminV1Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetAllTimeLeaderboardRankingAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingAdminV1Forbidden) ToJSONString() string {
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

func (o *GetAllTimeLeaderboardRankingAdminV1Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetAllTimeLeaderboardRankingAdminV1NotFound creates a GetAllTimeLeaderboardRankingAdminV1NotFound with default headers values
func NewGetAllTimeLeaderboardRankingAdminV1NotFound() *GetAllTimeLeaderboardRankingAdminV1NotFound {
	return &GetAllTimeLeaderboardRankingAdminV1NotFound{}
}

/*GetAllTimeLeaderboardRankingAdminV1NotFound handles this case with default header values.

  Not Found
*/
type GetAllTimeLeaderboardRankingAdminV1NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetAllTimeLeaderboardRankingAdminV1NotFound) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingAdminV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingAdminV1NotFound) ToJSONString() string {
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

func (o *GetAllTimeLeaderboardRankingAdminV1NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetAllTimeLeaderboardRankingAdminV1InternalServerError creates a GetAllTimeLeaderboardRankingAdminV1InternalServerError with default headers values
func NewGetAllTimeLeaderboardRankingAdminV1InternalServerError() *GetAllTimeLeaderboardRankingAdminV1InternalServerError {
	return &GetAllTimeLeaderboardRankingAdminV1InternalServerError{}
}

/*GetAllTimeLeaderboardRankingAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetAllTimeLeaderboardRankingAdminV1InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetAllTimeLeaderboardRankingAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingAdminV1InternalServerError) ToJSONString() string {
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

func (o *GetAllTimeLeaderboardRankingAdminV1InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
