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

// GetCurrentCycleLeaderboardRankingAdminV3Reader is a Reader for the GetCurrentCycleLeaderboardRankingAdminV3 structure.
type GetCurrentCycleLeaderboardRankingAdminV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetCurrentCycleLeaderboardRankingAdminV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetCurrentCycleLeaderboardRankingAdminV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetCurrentCycleLeaderboardRankingAdminV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetCurrentCycleLeaderboardRankingAdminV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetCurrentCycleLeaderboardRankingAdminV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetCurrentCycleLeaderboardRankingAdminV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetCurrentCycleLeaderboardRankingAdminV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetCurrentCycleLeaderboardRankingAdminV3OK creates a GetCurrentCycleLeaderboardRankingAdminV3OK with default headers values
func NewGetCurrentCycleLeaderboardRankingAdminV3OK() *GetCurrentCycleLeaderboardRankingAdminV3OK {
	return &GetCurrentCycleLeaderboardRankingAdminV3OK{}
}

/*GetCurrentCycleLeaderboardRankingAdminV3OK handles this case with default header values.

  OK
*/
type GetCurrentCycleLeaderboardRankingAdminV3OK struct {
	Payload *leaderboardclientmodels.ModelsGetLeaderboardRankingResp
}

func (o *GetCurrentCycleLeaderboardRankingAdminV3OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}][%d] getCurrentCycleLeaderboardRankingAdminV3OK  %+v", 200, o.ToJSONString())
}

func (o *GetCurrentCycleLeaderboardRankingAdminV3OK) ToJSONString() string {
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

func (o *GetCurrentCycleLeaderboardRankingAdminV3OK) GetPayload() *leaderboardclientmodels.ModelsGetLeaderboardRankingResp {
	return o.Payload
}

func (o *GetCurrentCycleLeaderboardRankingAdminV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetCurrentCycleLeaderboardRankingAdminV3BadRequest creates a GetCurrentCycleLeaderboardRankingAdminV3BadRequest with default headers values
func NewGetCurrentCycleLeaderboardRankingAdminV3BadRequest() *GetCurrentCycleLeaderboardRankingAdminV3BadRequest {
	return &GetCurrentCycleLeaderboardRankingAdminV3BadRequest{}
}

/*GetCurrentCycleLeaderboardRankingAdminV3BadRequest handles this case with default header values.

  Bad Request
*/
type GetCurrentCycleLeaderboardRankingAdminV3BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentCycleLeaderboardRankingAdminV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}][%d] getCurrentCycleLeaderboardRankingAdminV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetCurrentCycleLeaderboardRankingAdminV3BadRequest) ToJSONString() string {
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

func (o *GetCurrentCycleLeaderboardRankingAdminV3BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentCycleLeaderboardRankingAdminV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetCurrentCycleLeaderboardRankingAdminV3Unauthorized creates a GetCurrentCycleLeaderboardRankingAdminV3Unauthorized with default headers values
func NewGetCurrentCycleLeaderboardRankingAdminV3Unauthorized() *GetCurrentCycleLeaderboardRankingAdminV3Unauthorized {
	return &GetCurrentCycleLeaderboardRankingAdminV3Unauthorized{}
}

/*GetCurrentCycleLeaderboardRankingAdminV3Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetCurrentCycleLeaderboardRankingAdminV3Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentCycleLeaderboardRankingAdminV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}][%d] getCurrentCycleLeaderboardRankingAdminV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetCurrentCycleLeaderboardRankingAdminV3Unauthorized) ToJSONString() string {
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

func (o *GetCurrentCycleLeaderboardRankingAdminV3Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentCycleLeaderboardRankingAdminV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetCurrentCycleLeaderboardRankingAdminV3Forbidden creates a GetCurrentCycleLeaderboardRankingAdminV3Forbidden with default headers values
func NewGetCurrentCycleLeaderboardRankingAdminV3Forbidden() *GetCurrentCycleLeaderboardRankingAdminV3Forbidden {
	return &GetCurrentCycleLeaderboardRankingAdminV3Forbidden{}
}

/*GetCurrentCycleLeaderboardRankingAdminV3Forbidden handles this case with default header values.

  Forbidden
*/
type GetCurrentCycleLeaderboardRankingAdminV3Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentCycleLeaderboardRankingAdminV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}][%d] getCurrentCycleLeaderboardRankingAdminV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetCurrentCycleLeaderboardRankingAdminV3Forbidden) ToJSONString() string {
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

func (o *GetCurrentCycleLeaderboardRankingAdminV3Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentCycleLeaderboardRankingAdminV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetCurrentCycleLeaderboardRankingAdminV3NotFound creates a GetCurrentCycleLeaderboardRankingAdminV3NotFound with default headers values
func NewGetCurrentCycleLeaderboardRankingAdminV3NotFound() *GetCurrentCycleLeaderboardRankingAdminV3NotFound {
	return &GetCurrentCycleLeaderboardRankingAdminV3NotFound{}
}

/*GetCurrentCycleLeaderboardRankingAdminV3NotFound handles this case with default header values.

  Not Found
*/
type GetCurrentCycleLeaderboardRankingAdminV3NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentCycleLeaderboardRankingAdminV3NotFound) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}][%d] getCurrentCycleLeaderboardRankingAdminV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetCurrentCycleLeaderboardRankingAdminV3NotFound) ToJSONString() string {
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

func (o *GetCurrentCycleLeaderboardRankingAdminV3NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentCycleLeaderboardRankingAdminV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetCurrentCycleLeaderboardRankingAdminV3InternalServerError creates a GetCurrentCycleLeaderboardRankingAdminV3InternalServerError with default headers values
func NewGetCurrentCycleLeaderboardRankingAdminV3InternalServerError() *GetCurrentCycleLeaderboardRankingAdminV3InternalServerError {
	return &GetCurrentCycleLeaderboardRankingAdminV3InternalServerError{}
}

/*GetCurrentCycleLeaderboardRankingAdminV3InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetCurrentCycleLeaderboardRankingAdminV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentCycleLeaderboardRankingAdminV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}][%d] getCurrentCycleLeaderboardRankingAdminV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetCurrentCycleLeaderboardRankingAdminV3InternalServerError) ToJSONString() string {
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

func (o *GetCurrentCycleLeaderboardRankingAdminV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentCycleLeaderboardRankingAdminV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
