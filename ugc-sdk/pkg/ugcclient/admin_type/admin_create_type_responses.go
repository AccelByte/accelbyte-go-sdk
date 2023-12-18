// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_type

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// AdminCreateTypeReader is a Reader for the AdminCreateType structure.
type AdminCreateTypeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateTypeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateTypeCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateTypeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCreateTypeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminCreateTypeConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateTypeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v1/admin/namespaces/{namespace}/types returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateTypeCreated creates a AdminCreateTypeCreated with default headers values
func NewAdminCreateTypeCreated() *AdminCreateTypeCreated {
	return &AdminCreateTypeCreated{}
}

/*AdminCreateTypeCreated handles this case with default header values.

  types created
*/
type AdminCreateTypeCreated struct {
	Payload *ugcclientmodels.ModelsCreateTypeResponse
}

func (o *AdminCreateTypeCreated) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/types][%d] adminCreateTypeCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateTypeCreated) ToJSONString() string {
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

func (o *AdminCreateTypeCreated) GetPayload() *ugcclientmodels.ModelsCreateTypeResponse {
	return o.Payload
}

func (o *AdminCreateTypeCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsCreateTypeResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateTypeBadRequest creates a AdminCreateTypeBadRequest with default headers values
func NewAdminCreateTypeBadRequest() *AdminCreateTypeBadRequest {
	return &AdminCreateTypeBadRequest{}
}

/*AdminCreateTypeBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>771701</td><td>Malformed request/Invalid request body</td></tr></table>
*/
type AdminCreateTypeBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCreateTypeBadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/types][%d] adminCreateTypeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateTypeBadRequest) ToJSONString() string {
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

func (o *AdminCreateTypeBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateTypeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateTypeUnauthorized creates a AdminCreateTypeUnauthorized with default headers values
func NewAdminCreateTypeUnauthorized() *AdminCreateTypeUnauthorized {
	return &AdminCreateTypeUnauthorized{}
}

/*AdminCreateTypeUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminCreateTypeUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCreateTypeUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/types][%d] adminCreateTypeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCreateTypeUnauthorized) ToJSONString() string {
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

func (o *AdminCreateTypeUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateTypeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateTypeConflict creates a AdminCreateTypeConflict with default headers values
func NewAdminCreateTypeConflict() *AdminCreateTypeConflict {
	return &AdminCreateTypeConflict{}
}

/*AdminCreateTypeConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>771703</td><td>Conflicted resource indentifier</td></tr></table>
*/
type AdminCreateTypeConflict struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCreateTypeConflict) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/types][%d] adminCreateTypeConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminCreateTypeConflict) ToJSONString() string {
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

func (o *AdminCreateTypeConflict) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateTypeConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateTypeInternalServerError creates a AdminCreateTypeInternalServerError with default headers values
func NewAdminCreateTypeInternalServerError() *AdminCreateTypeInternalServerError {
	return &AdminCreateTypeInternalServerError{}
}

/*AdminCreateTypeInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>771702</td><td>Unable to save ugc type</td></tr></table>
*/
type AdminCreateTypeInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCreateTypeInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/types][%d] adminCreateTypeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateTypeInternalServerError) ToJSONString() string {
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

func (o *AdminCreateTypeInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateTypeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
