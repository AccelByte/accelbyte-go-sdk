// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match_pools

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// AdminGetMatchPoolTicketsReader is a Reader for the AdminGetMatchPoolTickets structure.
type AdminGetMatchPoolTicketsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetMatchPoolTicketsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetMatchPoolTicketsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetMatchPoolTicketsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetMatchPoolTicketsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetMatchPoolTicketsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetMatchPoolTicketsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/namespaces/{namespace}/match-pools/{pool}/tickets returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetMatchPoolTicketsOK creates a AdminGetMatchPoolTicketsOK with default headers values
func NewAdminGetMatchPoolTicketsOK() *AdminGetMatchPoolTicketsOK {
	return &AdminGetMatchPoolTicketsOK{}
}

/*AdminGetMatchPoolTicketsOK handles this case with default header values.

  OK
*/
type AdminGetMatchPoolTicketsOK struct {
	Payload *match2clientmodels.APIListMatchPoolTicketsResponse
}

func (o *AdminGetMatchPoolTicketsOK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}/tickets][%d] adminGetMatchPoolTicketsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetMatchPoolTicketsOK) ToJSONString() string {
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

func (o *AdminGetMatchPoolTicketsOK) GetPayload() *match2clientmodels.APIListMatchPoolTicketsResponse {
	return o.Payload
}

func (o *AdminGetMatchPoolTicketsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIListMatchPoolTicketsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetMatchPoolTicketsUnauthorized creates a AdminGetMatchPoolTicketsUnauthorized with default headers values
func NewAdminGetMatchPoolTicketsUnauthorized() *AdminGetMatchPoolTicketsUnauthorized {
	return &AdminGetMatchPoolTicketsUnauthorized{}
}

/*AdminGetMatchPoolTicketsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetMatchPoolTicketsUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminGetMatchPoolTicketsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}/tickets][%d] adminGetMatchPoolTicketsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetMatchPoolTicketsUnauthorized) ToJSONString() string {
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

func (o *AdminGetMatchPoolTicketsUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetMatchPoolTicketsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetMatchPoolTicketsForbidden creates a AdminGetMatchPoolTicketsForbidden with default headers values
func NewAdminGetMatchPoolTicketsForbidden() *AdminGetMatchPoolTicketsForbidden {
	return &AdminGetMatchPoolTicketsForbidden{}
}

/*AdminGetMatchPoolTicketsForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetMatchPoolTicketsForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminGetMatchPoolTicketsForbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}/tickets][%d] adminGetMatchPoolTicketsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetMatchPoolTicketsForbidden) ToJSONString() string {
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

func (o *AdminGetMatchPoolTicketsForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetMatchPoolTicketsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetMatchPoolTicketsNotFound creates a AdminGetMatchPoolTicketsNotFound with default headers values
func NewAdminGetMatchPoolTicketsNotFound() *AdminGetMatchPoolTicketsNotFound {
	return &AdminGetMatchPoolTicketsNotFound{}
}

/*AdminGetMatchPoolTicketsNotFound handles this case with default header values.

  Not Found
*/
type AdminGetMatchPoolTicketsNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminGetMatchPoolTicketsNotFound) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}/tickets][%d] adminGetMatchPoolTicketsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetMatchPoolTicketsNotFound) ToJSONString() string {
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

func (o *AdminGetMatchPoolTicketsNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetMatchPoolTicketsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetMatchPoolTicketsInternalServerError creates a AdminGetMatchPoolTicketsInternalServerError with default headers values
func NewAdminGetMatchPoolTicketsInternalServerError() *AdminGetMatchPoolTicketsInternalServerError {
	return &AdminGetMatchPoolTicketsInternalServerError{}
}

/*AdminGetMatchPoolTicketsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetMatchPoolTicketsInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminGetMatchPoolTicketsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}/tickets][%d] adminGetMatchPoolTicketsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetMatchPoolTicketsInternalServerError) ToJSONString() string {
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

func (o *AdminGetMatchPoolTicketsInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetMatchPoolTicketsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
