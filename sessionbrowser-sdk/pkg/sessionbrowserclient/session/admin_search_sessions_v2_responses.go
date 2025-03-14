// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
)

// AdminSearchSessionsV2Reader is a Reader for the AdminSearchSessionsV2 structure.
type AdminSearchSessionsV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSearchSessionsV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminSearchSessionsV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSearchSessionsV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminSearchSessionsV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminSearchSessionsV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminSearchSessionsV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSearchSessionsV2OK creates a AdminSearchSessionsV2OK with default headers values
func NewAdminSearchSessionsV2OK() *AdminSearchSessionsV2OK {
	return &AdminSearchSessionsV2OK{}
}

/*AdminSearchSessionsV2OK handles this case with default header values.

  Operation succeeded
*/
type AdminSearchSessionsV2OK struct {
	Payload *sessionbrowserclientmodels.ModelsGetSessionHistorySearchResponseV2
}

func (o *AdminSearchSessionsV2OK) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search][%d] adminSearchSessionsV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminSearchSessionsV2OK) ToJSONString() string {
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

func (o *AdminSearchSessionsV2OK) GetPayload() *sessionbrowserclientmodels.ModelsGetSessionHistorySearchResponseV2 {
	return o.Payload
}

func (o *AdminSearchSessionsV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ModelsGetSessionHistorySearchResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminSearchSessionsV2BadRequest creates a AdminSearchSessionsV2BadRequest with default headers values
func NewAdminSearchSessionsV2BadRequest() *AdminSearchSessionsV2BadRequest {
	return &AdminSearchSessionsV2BadRequest{}
}

/*AdminSearchSessionsV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AdminSearchSessionsV2BadRequest struct {
	Payload *sessionbrowserclientmodels.RestapiErrorV1
}

func (o *AdminSearchSessionsV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search][%d] adminSearchSessionsV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSearchSessionsV2BadRequest) ToJSONString() string {
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

func (o *AdminSearchSessionsV2BadRequest) GetPayload() *sessionbrowserclientmodels.RestapiErrorV1 {
	return o.Payload
}

func (o *AdminSearchSessionsV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminSearchSessionsV2Unauthorized creates a AdminSearchSessionsV2Unauthorized with default headers values
func NewAdminSearchSessionsV2Unauthorized() *AdminSearchSessionsV2Unauthorized {
	return &AdminSearchSessionsV2Unauthorized{}
}

/*AdminSearchSessionsV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminSearchSessionsV2Unauthorized struct {
	Payload *sessionbrowserclientmodels.RestapiErrorV1
}

func (o *AdminSearchSessionsV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search][%d] adminSearchSessionsV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminSearchSessionsV2Unauthorized) ToJSONString() string {
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

func (o *AdminSearchSessionsV2Unauthorized) GetPayload() *sessionbrowserclientmodels.RestapiErrorV1 {
	return o.Payload
}

func (o *AdminSearchSessionsV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminSearchSessionsV2Forbidden creates a AdminSearchSessionsV2Forbidden with default headers values
func NewAdminSearchSessionsV2Forbidden() *AdminSearchSessionsV2Forbidden {
	return &AdminSearchSessionsV2Forbidden{}
}

/*AdminSearchSessionsV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type AdminSearchSessionsV2Forbidden struct {
	Payload *sessionbrowserclientmodels.RestapiErrorV1
}

func (o *AdminSearchSessionsV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search][%d] adminSearchSessionsV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminSearchSessionsV2Forbidden) ToJSONString() string {
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

func (o *AdminSearchSessionsV2Forbidden) GetPayload() *sessionbrowserclientmodels.RestapiErrorV1 {
	return o.Payload
}

func (o *AdminSearchSessionsV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminSearchSessionsV2InternalServerError creates a AdminSearchSessionsV2InternalServerError with default headers values
func NewAdminSearchSessionsV2InternalServerError() *AdminSearchSessionsV2InternalServerError {
	return &AdminSearchSessionsV2InternalServerError{}
}

/*AdminSearchSessionsV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminSearchSessionsV2InternalServerError struct {
	Payload *sessionbrowserclientmodels.ResponseError
}

func (o *AdminSearchSessionsV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search][%d] adminSearchSessionsV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminSearchSessionsV2InternalServerError) ToJSONString() string {
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

func (o *AdminSearchSessionsV2InternalServerError) GetPayload() *sessionbrowserclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSearchSessionsV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
