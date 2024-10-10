// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_configuration

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

// GetLeaderboardConfigurationsPublicV2Reader is a Reader for the GetLeaderboardConfigurationsPublicV2 structure.
type GetLeaderboardConfigurationsPublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetLeaderboardConfigurationsPublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetLeaderboardConfigurationsPublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetLeaderboardConfigurationsPublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetLeaderboardConfigurationsPublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetLeaderboardConfigurationsPublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetLeaderboardConfigurationsPublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v2/public/namespaces/{namespace}/leaderboards returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetLeaderboardConfigurationsPublicV2OK creates a GetLeaderboardConfigurationsPublicV2OK with default headers values
func NewGetLeaderboardConfigurationsPublicV2OK() *GetLeaderboardConfigurationsPublicV2OK {
	return &GetLeaderboardConfigurationsPublicV2OK{}
}

/*GetLeaderboardConfigurationsPublicV2OK handles this case with default header values.

  Leaderboards retrieved
*/
type GetLeaderboardConfigurationsPublicV2OK struct {
	Payload *leaderboardclientmodels.V2GetAllLeaderboardConfigsPublicResp
}

func (o *GetLeaderboardConfigurationsPublicV2OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v2/public/namespaces/{namespace}/leaderboards][%d] getLeaderboardConfigurationsPublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationsPublicV2OK) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationsPublicV2OK) GetPayload() *leaderboardclientmodels.V2GetAllLeaderboardConfigsPublicResp {
	return o.Payload
}

func (o *GetLeaderboardConfigurationsPublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.V2GetAllLeaderboardConfigsPublicResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetLeaderboardConfigurationsPublicV2BadRequest creates a GetLeaderboardConfigurationsPublicV2BadRequest with default headers values
func NewGetLeaderboardConfigurationsPublicV2BadRequest() *GetLeaderboardConfigurationsPublicV2BadRequest {
	return &GetLeaderboardConfigurationsPublicV2BadRequest{}
}

/*GetLeaderboardConfigurationsPublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetLeaderboardConfigurationsPublicV2BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationsPublicV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v2/public/namespaces/{namespace}/leaderboards][%d] getLeaderboardConfigurationsPublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationsPublicV2BadRequest) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationsPublicV2BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationsPublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetLeaderboardConfigurationsPublicV2Unauthorized creates a GetLeaderboardConfigurationsPublicV2Unauthorized with default headers values
func NewGetLeaderboardConfigurationsPublicV2Unauthorized() *GetLeaderboardConfigurationsPublicV2Unauthorized {
	return &GetLeaderboardConfigurationsPublicV2Unauthorized{}
}

/*GetLeaderboardConfigurationsPublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetLeaderboardConfigurationsPublicV2Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationsPublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v2/public/namespaces/{namespace}/leaderboards][%d] getLeaderboardConfigurationsPublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationsPublicV2Unauthorized) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationsPublicV2Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationsPublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetLeaderboardConfigurationsPublicV2Forbidden creates a GetLeaderboardConfigurationsPublicV2Forbidden with default headers values
func NewGetLeaderboardConfigurationsPublicV2Forbidden() *GetLeaderboardConfigurationsPublicV2Forbidden {
	return &GetLeaderboardConfigurationsPublicV2Forbidden{}
}

/*GetLeaderboardConfigurationsPublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetLeaderboardConfigurationsPublicV2Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationsPublicV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v2/public/namespaces/{namespace}/leaderboards][%d] getLeaderboardConfigurationsPublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationsPublicV2Forbidden) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationsPublicV2Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationsPublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetLeaderboardConfigurationsPublicV2InternalServerError creates a GetLeaderboardConfigurationsPublicV2InternalServerError with default headers values
func NewGetLeaderboardConfigurationsPublicV2InternalServerError() *GetLeaderboardConfigurationsPublicV2InternalServerError {
	return &GetLeaderboardConfigurationsPublicV2InternalServerError{}
}

/*GetLeaderboardConfigurationsPublicV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetLeaderboardConfigurationsPublicV2InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationsPublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v2/public/namespaces/{namespace}/leaderboards][%d] getLeaderboardConfigurationsPublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationsPublicV2InternalServerError) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationsPublicV2InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationsPublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
