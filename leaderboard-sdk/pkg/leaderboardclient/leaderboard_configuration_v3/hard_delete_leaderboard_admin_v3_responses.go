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

// HardDeleteLeaderboardAdminV3Reader is a Reader for the HardDeleteLeaderboardAdminV3 structure.
type HardDeleteLeaderboardAdminV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *HardDeleteLeaderboardAdminV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewHardDeleteLeaderboardAdminV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewHardDeleteLeaderboardAdminV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewHardDeleteLeaderboardAdminV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewHardDeleteLeaderboardAdminV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewHardDeleteLeaderboardAdminV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewHardDeleteLeaderboardAdminV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard returns an error %d: %s", response.Code(), string(data))
	}
}

// NewHardDeleteLeaderboardAdminV3NoContent creates a HardDeleteLeaderboardAdminV3NoContent with default headers values
func NewHardDeleteLeaderboardAdminV3NoContent() *HardDeleteLeaderboardAdminV3NoContent {
	return &HardDeleteLeaderboardAdminV3NoContent{}
}

/*HardDeleteLeaderboardAdminV3NoContent handles this case with default header values.

  Leaderboard successfully deleted
*/
type HardDeleteLeaderboardAdminV3NoContent struct {
}

func (o *HardDeleteLeaderboardAdminV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard][%d] hardDeleteLeaderboardAdminV3NoContent ", 204)
}

func (o *HardDeleteLeaderboardAdminV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewHardDeleteLeaderboardAdminV3BadRequest creates a HardDeleteLeaderboardAdminV3BadRequest with default headers values
func NewHardDeleteLeaderboardAdminV3BadRequest() *HardDeleteLeaderboardAdminV3BadRequest {
	return &HardDeleteLeaderboardAdminV3BadRequest{}
}

/*HardDeleteLeaderboardAdminV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type HardDeleteLeaderboardAdminV3BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *HardDeleteLeaderboardAdminV3BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard][%d] hardDeleteLeaderboardAdminV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *HardDeleteLeaderboardAdminV3BadRequest) ToJSONString() string {
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

func (o *HardDeleteLeaderboardAdminV3BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *HardDeleteLeaderboardAdminV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewHardDeleteLeaderboardAdminV3Unauthorized creates a HardDeleteLeaderboardAdminV3Unauthorized with default headers values
func NewHardDeleteLeaderboardAdminV3Unauthorized() *HardDeleteLeaderboardAdminV3Unauthorized {
	return &HardDeleteLeaderboardAdminV3Unauthorized{}
}

/*HardDeleteLeaderboardAdminV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type HardDeleteLeaderboardAdminV3Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *HardDeleteLeaderboardAdminV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard][%d] hardDeleteLeaderboardAdminV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *HardDeleteLeaderboardAdminV3Unauthorized) ToJSONString() string {
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

func (o *HardDeleteLeaderboardAdminV3Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *HardDeleteLeaderboardAdminV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewHardDeleteLeaderboardAdminV3Forbidden creates a HardDeleteLeaderboardAdminV3Forbidden with default headers values
func NewHardDeleteLeaderboardAdminV3Forbidden() *HardDeleteLeaderboardAdminV3Forbidden {
	return &HardDeleteLeaderboardAdminV3Forbidden{}
}

/*HardDeleteLeaderboardAdminV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>71241</td><td>forbidden environment</td></tr></table>
*/
type HardDeleteLeaderboardAdminV3Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *HardDeleteLeaderboardAdminV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard][%d] hardDeleteLeaderboardAdminV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *HardDeleteLeaderboardAdminV3Forbidden) ToJSONString() string {
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

func (o *HardDeleteLeaderboardAdminV3Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *HardDeleteLeaderboardAdminV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewHardDeleteLeaderboardAdminV3NotFound creates a HardDeleteLeaderboardAdminV3NotFound with default headers values
func NewHardDeleteLeaderboardAdminV3NotFound() *HardDeleteLeaderboardAdminV3NotFound {
	return &HardDeleteLeaderboardAdminV3NotFound{}
}

/*HardDeleteLeaderboardAdminV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>71130</td><td>leaderboard config not found</td></tr></table>
*/
type HardDeleteLeaderboardAdminV3NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *HardDeleteLeaderboardAdminV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard][%d] hardDeleteLeaderboardAdminV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *HardDeleteLeaderboardAdminV3NotFound) ToJSONString() string {
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

func (o *HardDeleteLeaderboardAdminV3NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *HardDeleteLeaderboardAdminV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewHardDeleteLeaderboardAdminV3InternalServerError creates a HardDeleteLeaderboardAdminV3InternalServerError with default headers values
func NewHardDeleteLeaderboardAdminV3InternalServerError() *HardDeleteLeaderboardAdminV3InternalServerError {
	return &HardDeleteLeaderboardAdminV3InternalServerError{}
}

/*HardDeleteLeaderboardAdminV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type HardDeleteLeaderboardAdminV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *HardDeleteLeaderboardAdminV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard][%d] hardDeleteLeaderboardAdminV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *HardDeleteLeaderboardAdminV3InternalServerError) ToJSONString() string {
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

func (o *HardDeleteLeaderboardAdminV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *HardDeleteLeaderboardAdminV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
