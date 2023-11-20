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

// AdminBulkGetAdminGameRecordV1Reader is a Reader for the AdminBulkGetAdminGameRecordV1 structure.
type AdminBulkGetAdminGameRecordV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBulkGetAdminGameRecordV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminBulkGetAdminGameRecordV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBulkGetAdminGameRecordV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminBulkGetAdminGameRecordV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminBulkGetAdminGameRecordV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminBulkGetAdminGameRecordV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBulkGetAdminGameRecordV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBulkGetAdminGameRecordV1OK creates a AdminBulkGetAdminGameRecordV1OK with default headers values
func NewAdminBulkGetAdminGameRecordV1OK() *AdminBulkGetAdminGameRecordV1OK {
	return &AdminBulkGetAdminGameRecordV1OK{}
}

/*AdminBulkGetAdminGameRecordV1OK handles this case with default header values.

  OK
*/
type AdminBulkGetAdminGameRecordV1OK struct {
	Payload *cloudsaveclientmodels.ModelsBulkGetAdminGameRecordResponse
}

func (o *AdminBulkGetAdminGameRecordV1OK) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/bulk][%d] adminBulkGetAdminGameRecordV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminBulkGetAdminGameRecordV1OK) ToJSONString() string {
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

func (o *AdminBulkGetAdminGameRecordV1OK) GetPayload() *cloudsaveclientmodels.ModelsBulkGetAdminGameRecordResponse {
	return o.Payload
}

func (o *AdminBulkGetAdminGameRecordV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsBulkGetAdminGameRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminBulkGetAdminGameRecordV1BadRequest creates a AdminBulkGetAdminGameRecordV1BadRequest with default headers values
func NewAdminBulkGetAdminGameRecordV1BadRequest() *AdminBulkGetAdminGameRecordV1BadRequest {
	return &AdminBulkGetAdminGameRecordV1BadRequest{}
}

/*AdminBulkGetAdminGameRecordV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18168</td><td>invalid request body</td></tr><tr><td>18169</td><td>request record keys list exceed max size [%d]</td></tr></table>
*/
type AdminBulkGetAdminGameRecordV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminBulkGetAdminGameRecordV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/bulk][%d] adminBulkGetAdminGameRecordV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBulkGetAdminGameRecordV1BadRequest) ToJSONString() string {
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

func (o *AdminBulkGetAdminGameRecordV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminBulkGetAdminGameRecordV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkGetAdminGameRecordV1Unauthorized creates a AdminBulkGetAdminGameRecordV1Unauthorized with default headers values
func NewAdminBulkGetAdminGameRecordV1Unauthorized() *AdminBulkGetAdminGameRecordV1Unauthorized {
	return &AdminBulkGetAdminGameRecordV1Unauthorized{}
}

/*AdminBulkGetAdminGameRecordV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminBulkGetAdminGameRecordV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminBulkGetAdminGameRecordV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/bulk][%d] adminBulkGetAdminGameRecordV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminBulkGetAdminGameRecordV1Unauthorized) ToJSONString() string {
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

func (o *AdminBulkGetAdminGameRecordV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminBulkGetAdminGameRecordV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkGetAdminGameRecordV1Forbidden creates a AdminBulkGetAdminGameRecordV1Forbidden with default headers values
func NewAdminBulkGetAdminGameRecordV1Forbidden() *AdminBulkGetAdminGameRecordV1Forbidden {
	return &AdminBulkGetAdminGameRecordV1Forbidden{}
}

/*AdminBulkGetAdminGameRecordV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminBulkGetAdminGameRecordV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminBulkGetAdminGameRecordV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/bulk][%d] adminBulkGetAdminGameRecordV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminBulkGetAdminGameRecordV1Forbidden) ToJSONString() string {
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

func (o *AdminBulkGetAdminGameRecordV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminBulkGetAdminGameRecordV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkGetAdminGameRecordV1NotFound creates a AdminBulkGetAdminGameRecordV1NotFound with default headers values
func NewAdminBulkGetAdminGameRecordV1NotFound() *AdminBulkGetAdminGameRecordV1NotFound {
	return &AdminBulkGetAdminGameRecordV1NotFound{}
}

/*AdminBulkGetAdminGameRecordV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18171</td><td>record not found</td></tr></table>
*/
type AdminBulkGetAdminGameRecordV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminBulkGetAdminGameRecordV1NotFound) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/bulk][%d] adminBulkGetAdminGameRecordV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminBulkGetAdminGameRecordV1NotFound) ToJSONString() string {
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

func (o *AdminBulkGetAdminGameRecordV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminBulkGetAdminGameRecordV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkGetAdminGameRecordV1InternalServerError creates a AdminBulkGetAdminGameRecordV1InternalServerError with default headers values
func NewAdminBulkGetAdminGameRecordV1InternalServerError() *AdminBulkGetAdminGameRecordV1InternalServerError {
	return &AdminBulkGetAdminGameRecordV1InternalServerError{}
}

/*AdminBulkGetAdminGameRecordV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18170</td><td>unable to get record</td></tr><tr><td>18172</td><td>unable to decode record</td></tr></table>
*/
type AdminBulkGetAdminGameRecordV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminBulkGetAdminGameRecordV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/bulk][%d] adminBulkGetAdminGameRecordV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminBulkGetAdminGameRecordV1InternalServerError) ToJSONString() string {
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

func (o *AdminBulkGetAdminGameRecordV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminBulkGetAdminGameRecordV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
