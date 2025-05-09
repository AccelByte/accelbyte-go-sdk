// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package backfill

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

// GetBackfillReader is a Reader for the GetBackfill structure.
type GetBackfillReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetBackfillReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetBackfillOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetBackfillBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetBackfillUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetBackfillForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetBackfillNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetBackfillInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/namespaces/{namespace}/backfill/{backfillID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetBackfillOK creates a GetBackfillOK with default headers values
func NewGetBackfillOK() *GetBackfillOK {
	return &GetBackfillOK{}
}

/*GetBackfillOK handles this case with default header values.

  OK
*/
type GetBackfillOK struct {
	Payload *match2clientmodels.APIBackfillGetResponse
}

func (o *GetBackfillOK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/backfill/{backfillID}][%d] getBackfillOK  %+v", 200, o.ToJSONString())
}

func (o *GetBackfillOK) ToJSONString() string {
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

func (o *GetBackfillOK) GetPayload() *match2clientmodels.APIBackfillGetResponse {
	return o.Payload
}

func (o *GetBackfillOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIBackfillGetResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetBackfillBadRequest creates a GetBackfillBadRequest with default headers values
func NewGetBackfillBadRequest() *GetBackfillBadRequest {
	return &GetBackfillBadRequest{}
}

/*GetBackfillBadRequest handles this case with default header values.

  Bad Request
*/
type GetBackfillBadRequest struct {
	Payload *match2clientmodels.ResponseError
}

func (o *GetBackfillBadRequest) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/backfill/{backfillID}][%d] getBackfillBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetBackfillBadRequest) ToJSONString() string {
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

func (o *GetBackfillBadRequest) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *GetBackfillBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetBackfillUnauthorized creates a GetBackfillUnauthorized with default headers values
func NewGetBackfillUnauthorized() *GetBackfillUnauthorized {
	return &GetBackfillUnauthorized{}
}

/*GetBackfillUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetBackfillUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *GetBackfillUnauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/backfill/{backfillID}][%d] getBackfillUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetBackfillUnauthorized) ToJSONString() string {
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

func (o *GetBackfillUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *GetBackfillUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetBackfillForbidden creates a GetBackfillForbidden with default headers values
func NewGetBackfillForbidden() *GetBackfillForbidden {
	return &GetBackfillForbidden{}
}

/*GetBackfillForbidden handles this case with default header values.

  Forbidden
*/
type GetBackfillForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *GetBackfillForbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/backfill/{backfillID}][%d] getBackfillForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetBackfillForbidden) ToJSONString() string {
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

func (o *GetBackfillForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *GetBackfillForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetBackfillNotFound creates a GetBackfillNotFound with default headers values
func NewGetBackfillNotFound() *GetBackfillNotFound {
	return &GetBackfillNotFound{}
}

/*GetBackfillNotFound handles this case with default header values.

  Not Found
*/
type GetBackfillNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *GetBackfillNotFound) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/backfill/{backfillID}][%d] getBackfillNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetBackfillNotFound) ToJSONString() string {
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

func (o *GetBackfillNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *GetBackfillNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetBackfillInternalServerError creates a GetBackfillInternalServerError with default headers values
func NewGetBackfillInternalServerError() *GetBackfillInternalServerError {
	return &GetBackfillInternalServerError{}
}

/*GetBackfillInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetBackfillInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *GetBackfillInternalServerError) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/backfill/{backfillID}][%d] getBackfillInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetBackfillInternalServerError) ToJSONString() string {
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

func (o *GetBackfillInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *GetBackfillInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
