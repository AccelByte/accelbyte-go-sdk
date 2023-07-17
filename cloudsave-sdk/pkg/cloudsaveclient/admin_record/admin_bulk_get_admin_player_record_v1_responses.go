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

// AdminBulkGetAdminPlayerRecordV1Reader is a Reader for the AdminBulkGetAdminPlayerRecordV1 structure.
type AdminBulkGetAdminPlayerRecordV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBulkGetAdminPlayerRecordV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminBulkGetAdminPlayerRecordV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminBulkGetAdminPlayerRecordV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminBulkGetAdminPlayerRecordV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminBulkGetAdminPlayerRecordV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBulkGetAdminPlayerRecordV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBulkGetAdminPlayerRecordV1OK creates a AdminBulkGetAdminPlayerRecordV1OK with default headers values
func NewAdminBulkGetAdminPlayerRecordV1OK() *AdminBulkGetAdminPlayerRecordV1OK {
	return &AdminBulkGetAdminPlayerRecordV1OK{}
}

/*AdminBulkGetAdminPlayerRecordV1OK handles this case with default header values.

  OK
*/
type AdminBulkGetAdminPlayerRecordV1OK struct {
	Payload *cloudsaveclientmodels.ModelsBulkGetAdminPlayerRecordResponse
}

func (o *AdminBulkGetAdminPlayerRecordV1OK) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/bulk][%d] adminBulkGetAdminPlayerRecordV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminBulkGetAdminPlayerRecordV1OK) ToJSONString() string {
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

func (o *AdminBulkGetAdminPlayerRecordV1OK) GetPayload() *cloudsaveclientmodels.ModelsBulkGetAdminPlayerRecordResponse {
	return o.Payload
}

func (o *AdminBulkGetAdminPlayerRecordV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsBulkGetAdminPlayerRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminBulkGetAdminPlayerRecordV1Unauthorized creates a AdminBulkGetAdminPlayerRecordV1Unauthorized with default headers values
func NewAdminBulkGetAdminPlayerRecordV1Unauthorized() *AdminBulkGetAdminPlayerRecordV1Unauthorized {
	return &AdminBulkGetAdminPlayerRecordV1Unauthorized{}
}

/*AdminBulkGetAdminPlayerRecordV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminBulkGetAdminPlayerRecordV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminBulkGetAdminPlayerRecordV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/bulk][%d] adminBulkGetAdminPlayerRecordV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminBulkGetAdminPlayerRecordV1Unauthorized) ToJSONString() string {
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

func (o *AdminBulkGetAdminPlayerRecordV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminBulkGetAdminPlayerRecordV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkGetAdminPlayerRecordV1Forbidden creates a AdminBulkGetAdminPlayerRecordV1Forbidden with default headers values
func NewAdminBulkGetAdminPlayerRecordV1Forbidden() *AdminBulkGetAdminPlayerRecordV1Forbidden {
	return &AdminBulkGetAdminPlayerRecordV1Forbidden{}
}

/*AdminBulkGetAdminPlayerRecordV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminBulkGetAdminPlayerRecordV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminBulkGetAdminPlayerRecordV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/bulk][%d] adminBulkGetAdminPlayerRecordV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminBulkGetAdminPlayerRecordV1Forbidden) ToJSONString() string {
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

func (o *AdminBulkGetAdminPlayerRecordV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminBulkGetAdminPlayerRecordV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkGetAdminPlayerRecordV1NotFound creates a AdminBulkGetAdminPlayerRecordV1NotFound with default headers values
func NewAdminBulkGetAdminPlayerRecordV1NotFound() *AdminBulkGetAdminPlayerRecordV1NotFound {
	return &AdminBulkGetAdminPlayerRecordV1NotFound{}
}

/*AdminBulkGetAdminPlayerRecordV1NotFound handles this case with default header values.

  Not Found
*/
type AdminBulkGetAdminPlayerRecordV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminBulkGetAdminPlayerRecordV1NotFound) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/bulk][%d] adminBulkGetAdminPlayerRecordV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminBulkGetAdminPlayerRecordV1NotFound) ToJSONString() string {
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

func (o *AdminBulkGetAdminPlayerRecordV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminBulkGetAdminPlayerRecordV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkGetAdminPlayerRecordV1InternalServerError creates a AdminBulkGetAdminPlayerRecordV1InternalServerError with default headers values
func NewAdminBulkGetAdminPlayerRecordV1InternalServerError() *AdminBulkGetAdminPlayerRecordV1InternalServerError {
	return &AdminBulkGetAdminPlayerRecordV1InternalServerError{}
}

/*AdminBulkGetAdminPlayerRecordV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminBulkGetAdminPlayerRecordV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminBulkGetAdminPlayerRecordV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/bulk][%d] adminBulkGetAdminPlayerRecordV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminBulkGetAdminPlayerRecordV1InternalServerError) ToJSONString() string {
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

func (o *AdminBulkGetAdminPlayerRecordV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminBulkGetAdminPlayerRecordV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
