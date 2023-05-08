// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_configuration_v3

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

// GetLeaderboardConfigurationsAdminV3Reader is a Reader for the GetLeaderboardConfigurationsAdminV3 structure.
type GetLeaderboardConfigurationsAdminV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetLeaderboardConfigurationsAdminV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetLeaderboardConfigurationsAdminV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetLeaderboardConfigurationsAdminV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetLeaderboardConfigurationsAdminV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetLeaderboardConfigurationsAdminV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetLeaderboardConfigurationsAdminV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetLeaderboardConfigurationsAdminV3OK creates a GetLeaderboardConfigurationsAdminV3OK with default headers values
func NewGetLeaderboardConfigurationsAdminV3OK() *GetLeaderboardConfigurationsAdminV3OK {
	return &GetLeaderboardConfigurationsAdminV3OK{}
}

/*GetLeaderboardConfigurationsAdminV3OK handles this case with default header values.

  OK
*/
type GetLeaderboardConfigurationsAdminV3OK struct {
	Payload *leaderboardclientmodels.ModelsGetAllLeaderboardConfigsRespV3
}

func (o *GetLeaderboardConfigurationsAdminV3OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards][%d] getLeaderboardConfigurationsAdminV3OK  %+v", 200, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationsAdminV3OK) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationsAdminV3OK) GetPayload() *leaderboardclientmodels.ModelsGetAllLeaderboardConfigsRespV3 {
	return o.Payload
}

func (o *GetLeaderboardConfigurationsAdminV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ModelsGetAllLeaderboardConfigsRespV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetLeaderboardConfigurationsAdminV3BadRequest creates a GetLeaderboardConfigurationsAdminV3BadRequest with default headers values
func NewGetLeaderboardConfigurationsAdminV3BadRequest() *GetLeaderboardConfigurationsAdminV3BadRequest {
	return &GetLeaderboardConfigurationsAdminV3BadRequest{}
}

/*GetLeaderboardConfigurationsAdminV3BadRequest handles this case with default header values.

  Bad Request
*/
type GetLeaderboardConfigurationsAdminV3BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationsAdminV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards][%d] getLeaderboardConfigurationsAdminV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationsAdminV3BadRequest) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationsAdminV3BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationsAdminV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetLeaderboardConfigurationsAdminV3Unauthorized creates a GetLeaderboardConfigurationsAdminV3Unauthorized with default headers values
func NewGetLeaderboardConfigurationsAdminV3Unauthorized() *GetLeaderboardConfigurationsAdminV3Unauthorized {
	return &GetLeaderboardConfigurationsAdminV3Unauthorized{}
}

/*GetLeaderboardConfigurationsAdminV3Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetLeaderboardConfigurationsAdminV3Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationsAdminV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards][%d] getLeaderboardConfigurationsAdminV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationsAdminV3Unauthorized) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationsAdminV3Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationsAdminV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetLeaderboardConfigurationsAdminV3Forbidden creates a GetLeaderboardConfigurationsAdminV3Forbidden with default headers values
func NewGetLeaderboardConfigurationsAdminV3Forbidden() *GetLeaderboardConfigurationsAdminV3Forbidden {
	return &GetLeaderboardConfigurationsAdminV3Forbidden{}
}

/*GetLeaderboardConfigurationsAdminV3Forbidden handles this case with default header values.

  Forbidden
*/
type GetLeaderboardConfigurationsAdminV3Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationsAdminV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards][%d] getLeaderboardConfigurationsAdminV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationsAdminV3Forbidden) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationsAdminV3Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationsAdminV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetLeaderboardConfigurationsAdminV3InternalServerError creates a GetLeaderboardConfigurationsAdminV3InternalServerError with default headers values
func NewGetLeaderboardConfigurationsAdminV3InternalServerError() *GetLeaderboardConfigurationsAdminV3InternalServerError {
	return &GetLeaderboardConfigurationsAdminV3InternalServerError{}
}

/*GetLeaderboardConfigurationsAdminV3InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetLeaderboardConfigurationsAdminV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationsAdminV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards][%d] getLeaderboardConfigurationsAdminV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationsAdminV3InternalServerError) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationsAdminV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationsAdminV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
