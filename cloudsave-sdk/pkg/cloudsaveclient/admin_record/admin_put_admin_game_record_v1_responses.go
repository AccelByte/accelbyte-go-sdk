// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_record

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

// AdminPutAdminGameRecordV1Reader is a Reader for the AdminPutAdminGameRecordV1 structure.
type AdminPutAdminGameRecordV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPutAdminGameRecordV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminPutAdminGameRecordV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPutAdminGameRecordV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPutAdminGameRecordV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPutAdminGameRecordV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPutAdminGameRecordV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPutAdminGameRecordV1OK creates a AdminPutAdminGameRecordV1OK with default headers values
func NewAdminPutAdminGameRecordV1OK() *AdminPutAdminGameRecordV1OK {
	return &AdminPutAdminGameRecordV1OK{}
}

/*AdminPutAdminGameRecordV1OK handles this case with default header values.

  Record saved
*/
type AdminPutAdminGameRecordV1OK struct {
	Payload *cloudsaveclientmodels.ModelsAdminGameRecordResponse
}

func (o *AdminPutAdminGameRecordV1OK) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}][%d] adminPutAdminGameRecordV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminPutAdminGameRecordV1OK) ToJSONString() string {
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

func (o *AdminPutAdminGameRecordV1OK) GetPayload() *cloudsaveclientmodels.ModelsAdminGameRecordResponse {
	return o.Payload
}

func (o *AdminPutAdminGameRecordV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsAdminGameRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPutAdminGameRecordV1BadRequest creates a AdminPutAdminGameRecordV1BadRequest with default headers values
func NewAdminPutAdminGameRecordV1BadRequest() *AdminPutAdminGameRecordV1BadRequest {
	return &AdminPutAdminGameRecordV1BadRequest{}
}

/*AdminPutAdminGameRecordV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18144</td><td>invalid request body</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>18146</td><td>invalid request body: size of the request body must be less than [%d]MB</td></tr></table>
*/
type AdminPutAdminGameRecordV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutAdminGameRecordV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}][%d] adminPutAdminGameRecordV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPutAdminGameRecordV1BadRequest) ToJSONString() string {
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

func (o *AdminPutAdminGameRecordV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutAdminGameRecordV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutAdminGameRecordV1Unauthorized creates a AdminPutAdminGameRecordV1Unauthorized with default headers values
func NewAdminPutAdminGameRecordV1Unauthorized() *AdminPutAdminGameRecordV1Unauthorized {
	return &AdminPutAdminGameRecordV1Unauthorized{}
}

/*AdminPutAdminGameRecordV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPutAdminGameRecordV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutAdminGameRecordV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}][%d] adminPutAdminGameRecordV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPutAdminGameRecordV1Unauthorized) ToJSONString() string {
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

func (o *AdminPutAdminGameRecordV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutAdminGameRecordV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutAdminGameRecordV1Forbidden creates a AdminPutAdminGameRecordV1Forbidden with default headers values
func NewAdminPutAdminGameRecordV1Forbidden() *AdminPutAdminGameRecordV1Forbidden {
	return &AdminPutAdminGameRecordV1Forbidden{}
}

/*AdminPutAdminGameRecordV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminPutAdminGameRecordV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutAdminGameRecordV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}][%d] adminPutAdminGameRecordV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPutAdminGameRecordV1Forbidden) ToJSONString() string {
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

func (o *AdminPutAdminGameRecordV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutAdminGameRecordV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutAdminGameRecordV1InternalServerError creates a AdminPutAdminGameRecordV1InternalServerError with default headers values
func NewAdminPutAdminGameRecordV1InternalServerError() *AdminPutAdminGameRecordV1InternalServerError {
	return &AdminPutAdminGameRecordV1InternalServerError{}
}

/*AdminPutAdminGameRecordV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18145</td><td>unable to marshal request body</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>18164</td><td>unable to decode record</td></tr><tr><td>18147</td><td>unable to update record</td></tr></table>
*/
type AdminPutAdminGameRecordV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutAdminGameRecordV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}][%d] adminPutAdminGameRecordV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPutAdminGameRecordV1InternalServerError) ToJSONString() string {
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

func (o *AdminPutAdminGameRecordV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutAdminGameRecordV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
