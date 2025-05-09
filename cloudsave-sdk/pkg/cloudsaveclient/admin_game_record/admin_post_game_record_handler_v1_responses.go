// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_game_record

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// AdminPostGameRecordHandlerV1Reader is a Reader for the AdminPostGameRecordHandlerV1 structure.
type AdminPostGameRecordHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPostGameRecordHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminPostGameRecordHandlerV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPostGameRecordHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPostGameRecordHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPostGameRecordHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPostGameRecordHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/admin/namespaces/{namespace}/records/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPostGameRecordHandlerV1Created creates a AdminPostGameRecordHandlerV1Created with default headers values
func NewAdminPostGameRecordHandlerV1Created() *AdminPostGameRecordHandlerV1Created {
	return &AdminPostGameRecordHandlerV1Created{}
}

/*AdminPostGameRecordHandlerV1Created handles this case with default header values.

  Record in namespace-level saved
*/
type AdminPostGameRecordHandlerV1Created struct {
	Payload *cloudsaveclientmodels.ModelsGameRecordAdminResponse
}

func (o *AdminPostGameRecordHandlerV1Created) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/records/{key}][%d] adminPostGameRecordHandlerV1Created  %+v", 201, o.ToJSONString())
}

func (o *AdminPostGameRecordHandlerV1Created) ToJSONString() string {
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

func (o *AdminPostGameRecordHandlerV1Created) GetPayload() *cloudsaveclientmodels.ModelsGameRecordAdminResponse {
	return o.Payload
}

func (o *AdminPostGameRecordHandlerV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsGameRecordAdminResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPostGameRecordHandlerV1BadRequest creates a AdminPostGameRecordHandlerV1BadRequest with default headers values
func NewAdminPostGameRecordHandlerV1BadRequest() *AdminPostGameRecordHandlerV1BadRequest {
	return &AdminPostGameRecordHandlerV1BadRequest{}
}

/*AdminPostGameRecordHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18011</td><td>invalid request body</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>18015</td><td>invalid request body: size of the request body must be less than [%d]MB</td></tr></table>
*/
type AdminPostGameRecordHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostGameRecordHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/records/{key}][%d] adminPostGameRecordHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPostGameRecordHandlerV1BadRequest) ToJSONString() string {
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

func (o *AdminPostGameRecordHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostGameRecordHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPostGameRecordHandlerV1Unauthorized creates a AdminPostGameRecordHandlerV1Unauthorized with default headers values
func NewAdminPostGameRecordHandlerV1Unauthorized() *AdminPostGameRecordHandlerV1Unauthorized {
	return &AdminPostGameRecordHandlerV1Unauthorized{}
}

/*AdminPostGameRecordHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPostGameRecordHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostGameRecordHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/records/{key}][%d] adminPostGameRecordHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPostGameRecordHandlerV1Unauthorized) ToJSONString() string {
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

func (o *AdminPostGameRecordHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostGameRecordHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPostGameRecordHandlerV1Forbidden creates a AdminPostGameRecordHandlerV1Forbidden with default headers values
func NewAdminPostGameRecordHandlerV1Forbidden() *AdminPostGameRecordHandlerV1Forbidden {
	return &AdminPostGameRecordHandlerV1Forbidden{}
}

/*AdminPostGameRecordHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminPostGameRecordHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostGameRecordHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/records/{key}][%d] adminPostGameRecordHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPostGameRecordHandlerV1Forbidden) ToJSONString() string {
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

func (o *AdminPostGameRecordHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostGameRecordHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPostGameRecordHandlerV1InternalServerError creates a AdminPostGameRecordHandlerV1InternalServerError with default headers values
func NewAdminPostGameRecordHandlerV1InternalServerError() *AdminPostGameRecordHandlerV1InternalServerError {
	return &AdminPostGameRecordHandlerV1InternalServerError{}
}

/*AdminPostGameRecordHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18012</td><td>unable to marshal request body</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>18013</td><td>unable to save record</td></tr><tr><td>18005</td><td>unable to decode record</td></tr></table>
*/
type AdminPostGameRecordHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostGameRecordHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/records/{key}][%d] adminPostGameRecordHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPostGameRecordHandlerV1InternalServerError) ToJSONString() string {
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

func (o *AdminPostGameRecordHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostGameRecordHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
