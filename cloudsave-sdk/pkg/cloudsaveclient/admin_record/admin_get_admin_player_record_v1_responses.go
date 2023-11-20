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

// AdminGetAdminPlayerRecordV1Reader is a Reader for the AdminGetAdminPlayerRecordV1 structure.
type AdminGetAdminPlayerRecordV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetAdminPlayerRecordV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetAdminPlayerRecordV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetAdminPlayerRecordV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetAdminPlayerRecordV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetAdminPlayerRecordV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetAdminPlayerRecordV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetAdminPlayerRecordV1OK creates a AdminGetAdminPlayerRecordV1OK with default headers values
func NewAdminGetAdminPlayerRecordV1OK() *AdminGetAdminPlayerRecordV1OK {
	return &AdminGetAdminPlayerRecordV1OK{}
}

/*AdminGetAdminPlayerRecordV1OK handles this case with default header values.

  Record in user-level retrieved
*/
type AdminGetAdminPlayerRecordV1OK struct {
	Payload *cloudsaveclientmodels.ModelsAdminPlayerRecordResponse
}

func (o *AdminGetAdminPlayerRecordV1OK) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}][%d] adminGetAdminPlayerRecordV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetAdminPlayerRecordV1OK) ToJSONString() string {
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

func (o *AdminGetAdminPlayerRecordV1OK) GetPayload() *cloudsaveclientmodels.ModelsAdminPlayerRecordResponse {
	return o.Payload
}

func (o *AdminGetAdminPlayerRecordV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsAdminPlayerRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetAdminPlayerRecordV1Unauthorized creates a AdminGetAdminPlayerRecordV1Unauthorized with default headers values
func NewAdminGetAdminPlayerRecordV1Unauthorized() *AdminGetAdminPlayerRecordV1Unauthorized {
	return &AdminGetAdminPlayerRecordV1Unauthorized{}
}

/*AdminGetAdminPlayerRecordV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetAdminPlayerRecordV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetAdminPlayerRecordV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}][%d] adminGetAdminPlayerRecordV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetAdminPlayerRecordV1Unauthorized) ToJSONString() string {
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

func (o *AdminGetAdminPlayerRecordV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetAdminPlayerRecordV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetAdminPlayerRecordV1Forbidden creates a AdminGetAdminPlayerRecordV1Forbidden with default headers values
func NewAdminGetAdminPlayerRecordV1Forbidden() *AdminGetAdminPlayerRecordV1Forbidden {
	return &AdminGetAdminPlayerRecordV1Forbidden{}
}

/*AdminGetAdminPlayerRecordV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminGetAdminPlayerRecordV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetAdminPlayerRecordV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}][%d] adminGetAdminPlayerRecordV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetAdminPlayerRecordV1Forbidden) ToJSONString() string {
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

func (o *AdminGetAdminPlayerRecordV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetAdminPlayerRecordV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetAdminPlayerRecordV1NotFound creates a AdminGetAdminPlayerRecordV1NotFound with default headers values
func NewAdminGetAdminPlayerRecordV1NotFound() *AdminGetAdminPlayerRecordV1NotFound {
	return &AdminGetAdminPlayerRecordV1NotFound{}
}

/*AdminGetAdminPlayerRecordV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18152</td><td>record not found</td></tr></table>
*/
type AdminGetAdminPlayerRecordV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetAdminPlayerRecordV1NotFound) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}][%d] adminGetAdminPlayerRecordV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetAdminPlayerRecordV1NotFound) ToJSONString() string {
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

func (o *AdminGetAdminPlayerRecordV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetAdminPlayerRecordV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetAdminPlayerRecordV1InternalServerError creates a AdminGetAdminPlayerRecordV1InternalServerError with default headers values
func NewAdminGetAdminPlayerRecordV1InternalServerError() *AdminGetAdminPlayerRecordV1InternalServerError {
	return &AdminGetAdminPlayerRecordV1InternalServerError{}
}

/*AdminGetAdminPlayerRecordV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18151</td><td>unable to get record</td></tr><tr><td>18157</td><td>unable to decode record</td></tr></table>
*/
type AdminGetAdminPlayerRecordV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminGetAdminPlayerRecordV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}][%d] adminGetAdminPlayerRecordV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetAdminPlayerRecordV1InternalServerError) ToJSONString() string {
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

func (o *AdminGetAdminPlayerRecordV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminGetAdminPlayerRecordV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
