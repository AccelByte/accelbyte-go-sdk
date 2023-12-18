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

// AdminGetTypeReader is a Reader for the AdminGetType structure.
type AdminGetTypeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetTypeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetTypeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetTypeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetTypeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetTypeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/admin/namespaces/{namespace}/types returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetTypeOK creates a AdminGetTypeOK with default headers values
func NewAdminGetTypeOK() *AdminGetTypeOK {
	return &AdminGetTypeOK{}
}

/*AdminGetTypeOK handles this case with default header values.

  Get types
*/
type AdminGetTypeOK struct {
	Payload *ugcclientmodels.ModelsPaginatedGetTypeResponse
}

func (o *AdminGetTypeOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/types][%d] adminGetTypeOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetTypeOK) ToJSONString() string {
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

func (o *AdminGetTypeOK) GetPayload() *ugcclientmodels.ModelsPaginatedGetTypeResponse {
	return o.Payload
}

func (o *AdminGetTypeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedGetTypeResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetTypeBadRequest creates a AdminGetTypeBadRequest with default headers values
func NewAdminGetTypeBadRequest() *AdminGetTypeBadRequest {
	return &AdminGetTypeBadRequest{}
}

/*AdminGetTypeBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>771801</td><td>invalid paging parameter</td></tr></table>
*/
type AdminGetTypeBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetTypeBadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/types][%d] adminGetTypeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetTypeBadRequest) ToJSONString() string {
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

func (o *AdminGetTypeBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetTypeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetTypeUnauthorized creates a AdminGetTypeUnauthorized with default headers values
func NewAdminGetTypeUnauthorized() *AdminGetTypeUnauthorized {
	return &AdminGetTypeUnauthorized{}
}

/*AdminGetTypeUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetTypeUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetTypeUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/types][%d] adminGetTypeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetTypeUnauthorized) ToJSONString() string {
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

func (o *AdminGetTypeUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetTypeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetTypeInternalServerError creates a AdminGetTypeInternalServerError with default headers values
func NewAdminGetTypeInternalServerError() *AdminGetTypeInternalServerError {
	return &AdminGetTypeInternalServerError{}
}

/*AdminGetTypeInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>771802</td><td>Unable get types</td></tr></table>
*/
type AdminGetTypeInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetTypeInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/types][%d] adminGetTypeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetTypeInternalServerError) ToJSONString() string {
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

func (o *AdminGetTypeInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetTypeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
