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

// GetLeaderboardConfigurationAdminV1Reader is a Reader for the GetLeaderboardConfigurationAdminV1 structure.
type GetLeaderboardConfigurationAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetLeaderboardConfigurationAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetLeaderboardConfigurationAdminV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetLeaderboardConfigurationAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetLeaderboardConfigurationAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetLeaderboardConfigurationAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetLeaderboardConfigurationAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetLeaderboardConfigurationAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetLeaderboardConfigurationAdminV1OK creates a GetLeaderboardConfigurationAdminV1OK with default headers values
func NewGetLeaderboardConfigurationAdminV1OK() *GetLeaderboardConfigurationAdminV1OK {
	return &GetLeaderboardConfigurationAdminV1OK{}
}

/*GetLeaderboardConfigurationAdminV1OK handles this case with default header values.

  Leaderboard retrieved
*/
type GetLeaderboardConfigurationAdminV1OK struct {
	Payload *leaderboardclientmodels.ModelsGetLeaderboardConfigResp
}

func (o *GetLeaderboardConfigurationAdminV1OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] getLeaderboardConfigurationAdminV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationAdminV1OK) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationAdminV1OK) GetPayload() *leaderboardclientmodels.ModelsGetLeaderboardConfigResp {
	return o.Payload
}

func (o *GetLeaderboardConfigurationAdminV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ModelsGetLeaderboardConfigResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetLeaderboardConfigurationAdminV1BadRequest creates a GetLeaderboardConfigurationAdminV1BadRequest with default headers values
func NewGetLeaderboardConfigurationAdminV1BadRequest() *GetLeaderboardConfigurationAdminV1BadRequest {
	return &GetLeaderboardConfigurationAdminV1BadRequest{}
}

/*GetLeaderboardConfigurationAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetLeaderboardConfigurationAdminV1BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] getLeaderboardConfigurationAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationAdminV1BadRequest) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationAdminV1BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetLeaderboardConfigurationAdminV1Unauthorized creates a GetLeaderboardConfigurationAdminV1Unauthorized with default headers values
func NewGetLeaderboardConfigurationAdminV1Unauthorized() *GetLeaderboardConfigurationAdminV1Unauthorized {
	return &GetLeaderboardConfigurationAdminV1Unauthorized{}
}

/*GetLeaderboardConfigurationAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetLeaderboardConfigurationAdminV1Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] getLeaderboardConfigurationAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationAdminV1Unauthorized) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationAdminV1Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetLeaderboardConfigurationAdminV1Forbidden creates a GetLeaderboardConfigurationAdminV1Forbidden with default headers values
func NewGetLeaderboardConfigurationAdminV1Forbidden() *GetLeaderboardConfigurationAdminV1Forbidden {
	return &GetLeaderboardConfigurationAdminV1Forbidden{}
}

/*GetLeaderboardConfigurationAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetLeaderboardConfigurationAdminV1Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] getLeaderboardConfigurationAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationAdminV1Forbidden) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationAdminV1Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetLeaderboardConfigurationAdminV1NotFound creates a GetLeaderboardConfigurationAdminV1NotFound with default headers values
func NewGetLeaderboardConfigurationAdminV1NotFound() *GetLeaderboardConfigurationAdminV1NotFound {
	return &GetLeaderboardConfigurationAdminV1NotFound{}
}

/*GetLeaderboardConfigurationAdminV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>71130</td><td>leaderboard config not found</td></tr></table>
*/
type GetLeaderboardConfigurationAdminV1NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationAdminV1NotFound) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] getLeaderboardConfigurationAdminV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationAdminV1NotFound) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationAdminV1NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetLeaderboardConfigurationAdminV1InternalServerError creates a GetLeaderboardConfigurationAdminV1InternalServerError with default headers values
func NewGetLeaderboardConfigurationAdminV1InternalServerError() *GetLeaderboardConfigurationAdminV1InternalServerError {
	return &GetLeaderboardConfigurationAdminV1InternalServerError{}
}

/*GetLeaderboardConfigurationAdminV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetLeaderboardConfigurationAdminV1InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] getLeaderboardConfigurationAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationAdminV1InternalServerError) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationAdminV1InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
