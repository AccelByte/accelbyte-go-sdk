// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_player_record

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

// AdminPostPlayerPublicRecordHandlerV1Reader is a Reader for the AdminPostPlayerPublicRecordHandlerV1 structure.
type AdminPostPlayerPublicRecordHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPostPlayerPublicRecordHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminPostPlayerPublicRecordHandlerV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPostPlayerPublicRecordHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPostPlayerPublicRecordHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPostPlayerPublicRecordHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPostPlayerPublicRecordHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPostPlayerPublicRecordHandlerV1Created creates a AdminPostPlayerPublicRecordHandlerV1Created with default headers values
func NewAdminPostPlayerPublicRecordHandlerV1Created() *AdminPostPlayerPublicRecordHandlerV1Created {
	return &AdminPostPlayerPublicRecordHandlerV1Created{}
}

/*AdminPostPlayerPublicRecordHandlerV1Created handles this case with default header values.

  Record saved
*/
type AdminPostPlayerPublicRecordHandlerV1Created struct {
	Payload *cloudsaveclientmodels.ModelsPlayerRecordResponse
}

func (o *AdminPostPlayerPublicRecordHandlerV1Created) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] adminPostPlayerPublicRecordHandlerV1Created  %+v", 201, o.ToJSONString())
}

func (o *AdminPostPlayerPublicRecordHandlerV1Created) ToJSONString() string {
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

func (o *AdminPostPlayerPublicRecordHandlerV1Created) GetPayload() *cloudsaveclientmodels.ModelsPlayerRecordResponse {
	return o.Payload
}

func (o *AdminPostPlayerPublicRecordHandlerV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsPlayerRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPostPlayerPublicRecordHandlerV1BadRequest creates a AdminPostPlayerPublicRecordHandlerV1BadRequest with default headers values
func NewAdminPostPlayerPublicRecordHandlerV1BadRequest() *AdminPostPlayerPublicRecordHandlerV1BadRequest {
	return &AdminPostPlayerPublicRecordHandlerV1BadRequest{}
}

/*AdminPostPlayerPublicRecordHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18030</td><td>invalid request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminPostPlayerPublicRecordHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerPublicRecordHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] adminPostPlayerPublicRecordHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPostPlayerPublicRecordHandlerV1BadRequest) ToJSONString() string {
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

func (o *AdminPostPlayerPublicRecordHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerPublicRecordHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPostPlayerPublicRecordHandlerV1Unauthorized creates a AdminPostPlayerPublicRecordHandlerV1Unauthorized with default headers values
func NewAdminPostPlayerPublicRecordHandlerV1Unauthorized() *AdminPostPlayerPublicRecordHandlerV1Unauthorized {
	return &AdminPostPlayerPublicRecordHandlerV1Unauthorized{}
}

/*AdminPostPlayerPublicRecordHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPostPlayerPublicRecordHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerPublicRecordHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] adminPostPlayerPublicRecordHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPostPlayerPublicRecordHandlerV1Unauthorized) ToJSONString() string {
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

func (o *AdminPostPlayerPublicRecordHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerPublicRecordHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPostPlayerPublicRecordHandlerV1Forbidden creates a AdminPostPlayerPublicRecordHandlerV1Forbidden with default headers values
func NewAdminPostPlayerPublicRecordHandlerV1Forbidden() *AdminPostPlayerPublicRecordHandlerV1Forbidden {
	return &AdminPostPlayerPublicRecordHandlerV1Forbidden{}
}

/*AdminPostPlayerPublicRecordHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminPostPlayerPublicRecordHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerPublicRecordHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] adminPostPlayerPublicRecordHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPostPlayerPublicRecordHandlerV1Forbidden) ToJSONString() string {
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

func (o *AdminPostPlayerPublicRecordHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerPublicRecordHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPostPlayerPublicRecordHandlerV1InternalServerError creates a AdminPostPlayerPublicRecordHandlerV1InternalServerError with default headers values
func NewAdminPostPlayerPublicRecordHandlerV1InternalServerError() *AdminPostPlayerPublicRecordHandlerV1InternalServerError {
	return &AdminPostPlayerPublicRecordHandlerV1InternalServerError{}
}

/*AdminPostPlayerPublicRecordHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>18033</td><td>unable to save record</td></tr><tr><td>18005</td><td>unable to decode record</td></tr></table>
*/
type AdminPostPlayerPublicRecordHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPostPlayerPublicRecordHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] adminPostPlayerPublicRecordHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPostPlayerPublicRecordHandlerV1InternalServerError) ToJSONString() string {
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

func (o *AdminPostPlayerPublicRecordHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPostPlayerPublicRecordHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
