// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
)

// AdminGetListPersonalDataRequestReader is a Reader for the AdminGetListPersonalDataRequest structure.
type AdminGetListPersonalDataRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetListPersonalDataRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetListPersonalDataRequestOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetListPersonalDataRequestBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetListPersonalDataRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetListPersonalDataRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetListPersonalDataRequestNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetListPersonalDataRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /gdpr/admin/namespaces/{namespace}/requests returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetListPersonalDataRequestOK creates a AdminGetListPersonalDataRequestOK with default headers values
func NewAdminGetListPersonalDataRequestOK() *AdminGetListPersonalDataRequestOK {
	return &AdminGetListPersonalDataRequestOK{}
}

/*AdminGetListPersonalDataRequestOK handles this case with default header values.

  OK
*/
type AdminGetListPersonalDataRequestOK struct {
	Payload *gdprclientmodels.ModelsListPersonalDataResponse
}

func (o *AdminGetListPersonalDataRequestOK) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/requests][%d] adminGetListPersonalDataRequestOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetListPersonalDataRequestOK) ToJSONString() string {
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

func (o *AdminGetListPersonalDataRequestOK) GetPayload() *gdprclientmodels.ModelsListPersonalDataResponse {
	return o.Payload
}

func (o *AdminGetListPersonalDataRequestOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ModelsListPersonalDataResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListPersonalDataRequestBadRequest creates a AdminGetListPersonalDataRequestBadRequest with default headers values
func NewAdminGetListPersonalDataRequestBadRequest() *AdminGetListPersonalDataRequestBadRequest {
	return &AdminGetListPersonalDataRequestBadRequest{}
}

/*AdminGetListPersonalDataRequestBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetListPersonalDataRequestBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetListPersonalDataRequestBadRequest) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/requests][%d] adminGetListPersonalDataRequestBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetListPersonalDataRequestBadRequest) ToJSONString() string {
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

func (o *AdminGetListPersonalDataRequestBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetListPersonalDataRequestBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListPersonalDataRequestUnauthorized creates a AdminGetListPersonalDataRequestUnauthorized with default headers values
func NewAdminGetListPersonalDataRequestUnauthorized() *AdminGetListPersonalDataRequestUnauthorized {
	return &AdminGetListPersonalDataRequestUnauthorized{}
}

/*AdminGetListPersonalDataRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetListPersonalDataRequestUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetListPersonalDataRequestUnauthorized) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/requests][%d] adminGetListPersonalDataRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetListPersonalDataRequestUnauthorized) ToJSONString() string {
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

func (o *AdminGetListPersonalDataRequestUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetListPersonalDataRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListPersonalDataRequestForbidden creates a AdminGetListPersonalDataRequestForbidden with default headers values
func NewAdminGetListPersonalDataRequestForbidden() *AdminGetListPersonalDataRequestForbidden {
	return &AdminGetListPersonalDataRequestForbidden{}
}

/*AdminGetListPersonalDataRequestForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetListPersonalDataRequestForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetListPersonalDataRequestForbidden) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/requests][%d] adminGetListPersonalDataRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetListPersonalDataRequestForbidden) ToJSONString() string {
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

func (o *AdminGetListPersonalDataRequestForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetListPersonalDataRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListPersonalDataRequestNotFound creates a AdminGetListPersonalDataRequestNotFound with default headers values
func NewAdminGetListPersonalDataRequestNotFound() *AdminGetListPersonalDataRequestNotFound {
	return &AdminGetListPersonalDataRequestNotFound{}
}

/*AdminGetListPersonalDataRequestNotFound handles this case with default header values.

  Not Found
*/
type AdminGetListPersonalDataRequestNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetListPersonalDataRequestNotFound) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/requests][%d] adminGetListPersonalDataRequestNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetListPersonalDataRequestNotFound) ToJSONString() string {
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

func (o *AdminGetListPersonalDataRequestNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetListPersonalDataRequestNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListPersonalDataRequestInternalServerError creates a AdminGetListPersonalDataRequestInternalServerError with default headers values
func NewAdminGetListPersonalDataRequestInternalServerError() *AdminGetListPersonalDataRequestInternalServerError {
	return &AdminGetListPersonalDataRequestInternalServerError{}
}

/*AdminGetListPersonalDataRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetListPersonalDataRequestInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetListPersonalDataRequestInternalServerError) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/requests][%d] adminGetListPersonalDataRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetListPersonalDataRequestInternalServerError) ToJSONString() string {
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

func (o *AdminGetListPersonalDataRequestInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetListPersonalDataRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
