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

// AdminDeleteAdminPlayerRecordV1Reader is a Reader for the AdminDeleteAdminPlayerRecordV1 structure.
type AdminDeleteAdminPlayerRecordV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteAdminPlayerRecordV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteAdminPlayerRecordV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteAdminPlayerRecordV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteAdminPlayerRecordV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteAdminPlayerRecordV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteAdminPlayerRecordV1NoContent creates a AdminDeleteAdminPlayerRecordV1NoContent with default headers values
func NewAdminDeleteAdminPlayerRecordV1NoContent() *AdminDeleteAdminPlayerRecordV1NoContent {
	return &AdminDeleteAdminPlayerRecordV1NoContent{}
}

/*AdminDeleteAdminPlayerRecordV1NoContent handles this case with default header values.

  Record in user-level saved
*/
type AdminDeleteAdminPlayerRecordV1NoContent struct {
}

func (o *AdminDeleteAdminPlayerRecordV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}][%d] adminDeleteAdminPlayerRecordV1NoContent ", 204)
}

func (o *AdminDeleteAdminPlayerRecordV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteAdminPlayerRecordV1Unauthorized creates a AdminDeleteAdminPlayerRecordV1Unauthorized with default headers values
func NewAdminDeleteAdminPlayerRecordV1Unauthorized() *AdminDeleteAdminPlayerRecordV1Unauthorized {
	return &AdminDeleteAdminPlayerRecordV1Unauthorized{}
}

/*AdminDeleteAdminPlayerRecordV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteAdminPlayerRecordV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeleteAdminPlayerRecordV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}][%d] adminDeleteAdminPlayerRecordV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteAdminPlayerRecordV1Unauthorized) ToJSONString() string {
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

func (o *AdminDeleteAdminPlayerRecordV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeleteAdminPlayerRecordV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteAdminPlayerRecordV1NotFound creates a AdminDeleteAdminPlayerRecordV1NotFound with default headers values
func NewAdminDeleteAdminPlayerRecordV1NotFound() *AdminDeleteAdminPlayerRecordV1NotFound {
	return &AdminDeleteAdminPlayerRecordV1NotFound{}
}

/*AdminDeleteAdminPlayerRecordV1NotFound handles this case with default header values.

  Not Found
*/
type AdminDeleteAdminPlayerRecordV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeleteAdminPlayerRecordV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}][%d] adminDeleteAdminPlayerRecordV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteAdminPlayerRecordV1NotFound) ToJSONString() string {
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

func (o *AdminDeleteAdminPlayerRecordV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeleteAdminPlayerRecordV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteAdminPlayerRecordV1InternalServerError creates a AdminDeleteAdminPlayerRecordV1InternalServerError with default headers values
func NewAdminDeleteAdminPlayerRecordV1InternalServerError() *AdminDeleteAdminPlayerRecordV1InternalServerError {
	return &AdminDeleteAdminPlayerRecordV1InternalServerError{}
}

/*AdminDeleteAdminPlayerRecordV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteAdminPlayerRecordV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeleteAdminPlayerRecordV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}][%d] adminDeleteAdminPlayerRecordV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteAdminPlayerRecordV1InternalServerError) ToJSONString() string {
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

func (o *AdminDeleteAdminPlayerRecordV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeleteAdminPlayerRecordV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
