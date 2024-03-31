// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session_detail

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclientmodels"
)

// GetPartyDetailReader is a Reader for the GetPartyDetail structure.
type GetPartyDetailReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPartyDetailReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPartyDetailOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetPartyDetailBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetPartyDetailUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetPartyDetailForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetPartyDetailNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetPartyDetailInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v1/admin/namespaces/{namespace}/parties/{sessionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPartyDetailOK creates a GetPartyDetailOK with default headers values
func NewGetPartyDetailOK() *GetPartyDetailOK {
	return &GetPartyDetailOK{}
}

/*GetPartyDetailOK handles this case with default header values.

  OK
*/
type GetPartyDetailOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsPartyDetail
}

func (o *GetPartyDetailOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/parties/{sessionId}][%d] getPartyDetailOK  %+v", 200, o.ToJSONString())
}

func (o *GetPartyDetailOK) ToJSONString() string {
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

func (o *GetPartyDetailOK) GetPayload() *sessionhistoryclientmodels.ApimodelsPartyDetail {
	return o.Payload
}

func (o *GetPartyDetailOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsPartyDetail)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPartyDetailBadRequest creates a GetPartyDetailBadRequest with default headers values
func NewGetPartyDetailBadRequest() *GetPartyDetailBadRequest {
	return &GetPartyDetailBadRequest{}
}

/*GetPartyDetailBadRequest handles this case with default header values.

  Bad Request
*/
type GetPartyDetailBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *GetPartyDetailBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/parties/{sessionId}][%d] getPartyDetailBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetPartyDetailBadRequest) ToJSONString() string {
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

func (o *GetPartyDetailBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *GetPartyDetailBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPartyDetailUnauthorized creates a GetPartyDetailUnauthorized with default headers values
func NewGetPartyDetailUnauthorized() *GetPartyDetailUnauthorized {
	return &GetPartyDetailUnauthorized{}
}

/*GetPartyDetailUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetPartyDetailUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *GetPartyDetailUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/parties/{sessionId}][%d] getPartyDetailUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetPartyDetailUnauthorized) ToJSONString() string {
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

func (o *GetPartyDetailUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *GetPartyDetailUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPartyDetailForbidden creates a GetPartyDetailForbidden with default headers values
func NewGetPartyDetailForbidden() *GetPartyDetailForbidden {
	return &GetPartyDetailForbidden{}
}

/*GetPartyDetailForbidden handles this case with default header values.

  Forbidden
*/
type GetPartyDetailForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *GetPartyDetailForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/parties/{sessionId}][%d] getPartyDetailForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetPartyDetailForbidden) ToJSONString() string {
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

func (o *GetPartyDetailForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *GetPartyDetailForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPartyDetailNotFound creates a GetPartyDetailNotFound with default headers values
func NewGetPartyDetailNotFound() *GetPartyDetailNotFound {
	return &GetPartyDetailNotFound{}
}

/*GetPartyDetailNotFound handles this case with default header values.

  Not Found
*/
type GetPartyDetailNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *GetPartyDetailNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/parties/{sessionId}][%d] getPartyDetailNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetPartyDetailNotFound) ToJSONString() string {
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

func (o *GetPartyDetailNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *GetPartyDetailNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPartyDetailInternalServerError creates a GetPartyDetailInternalServerError with default headers values
func NewGetPartyDetailInternalServerError() *GetPartyDetailInternalServerError {
	return &GetPartyDetailInternalServerError{}
}

/*GetPartyDetailInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetPartyDetailInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *GetPartyDetailInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/parties/{sessionId}][%d] getPartyDetailInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetPartyDetailInternalServerError) ToJSONString() string {
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

func (o *GetPartyDetailInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *GetPartyDetailInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
