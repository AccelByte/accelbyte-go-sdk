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

// AcceptBackfillReader is a Reader for the AcceptBackfill structure.
type AcceptBackfillReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AcceptBackfillReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAcceptBackfillOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAcceptBackfillBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAcceptBackfillUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAcceptBackfillForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAcceptBackfillNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAcceptBackfillInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/accept returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAcceptBackfillOK creates a AcceptBackfillOK with default headers values
func NewAcceptBackfillOK() *AcceptBackfillOK {
	return &AcceptBackfillOK{}
}

/*AcceptBackfillOK handles this case with default header values.

  OK
*/
type AcceptBackfillOK struct {
	Payload *match2clientmodels.ModelsGameSession
}

func (o *AcceptBackfillOK) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/accept][%d] acceptBackfillOK  %+v", 200, o.ToJSONString())
}

func (o *AcceptBackfillOK) ToJSONString() string {
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

func (o *AcceptBackfillOK) GetPayload() *match2clientmodels.ModelsGameSession {
	return o.Payload
}

func (o *AcceptBackfillOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ModelsGameSession)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAcceptBackfillBadRequest creates a AcceptBackfillBadRequest with default headers values
func NewAcceptBackfillBadRequest() *AcceptBackfillBadRequest {
	return &AcceptBackfillBadRequest{}
}

/*AcceptBackfillBadRequest handles this case with default header values.

  Bad Request
*/
type AcceptBackfillBadRequest struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AcceptBackfillBadRequest) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/accept][%d] acceptBackfillBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AcceptBackfillBadRequest) ToJSONString() string {
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

func (o *AcceptBackfillBadRequest) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AcceptBackfillBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAcceptBackfillUnauthorized creates a AcceptBackfillUnauthorized with default headers values
func NewAcceptBackfillUnauthorized() *AcceptBackfillUnauthorized {
	return &AcceptBackfillUnauthorized{}
}

/*AcceptBackfillUnauthorized handles this case with default header values.

  Unauthorized
*/
type AcceptBackfillUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AcceptBackfillUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/accept][%d] acceptBackfillUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AcceptBackfillUnauthorized) ToJSONString() string {
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

func (o *AcceptBackfillUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AcceptBackfillUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAcceptBackfillForbidden creates a AcceptBackfillForbidden with default headers values
func NewAcceptBackfillForbidden() *AcceptBackfillForbidden {
	return &AcceptBackfillForbidden{}
}

/*AcceptBackfillForbidden handles this case with default header values.

  Forbidden
*/
type AcceptBackfillForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AcceptBackfillForbidden) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/accept][%d] acceptBackfillForbidden  %+v", 403, o.ToJSONString())
}

func (o *AcceptBackfillForbidden) ToJSONString() string {
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

func (o *AcceptBackfillForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AcceptBackfillForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAcceptBackfillNotFound creates a AcceptBackfillNotFound with default headers values
func NewAcceptBackfillNotFound() *AcceptBackfillNotFound {
	return &AcceptBackfillNotFound{}
}

/*AcceptBackfillNotFound handles this case with default header values.

  Not Found
*/
type AcceptBackfillNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AcceptBackfillNotFound) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/accept][%d] acceptBackfillNotFound  %+v", 404, o.ToJSONString())
}

func (o *AcceptBackfillNotFound) ToJSONString() string {
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

func (o *AcceptBackfillNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AcceptBackfillNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAcceptBackfillInternalServerError creates a AcceptBackfillInternalServerError with default headers values
func NewAcceptBackfillInternalServerError() *AcceptBackfillInternalServerError {
	return &AcceptBackfillInternalServerError{}
}

/*AcceptBackfillInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AcceptBackfillInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AcceptBackfillInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/accept][%d] acceptBackfillInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AcceptBackfillInternalServerError) ToJSONString() string {
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

func (o *AcceptBackfillInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AcceptBackfillInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
