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

// DeleteBackfillReader is a Reader for the DeleteBackfill structure.
type DeleteBackfillReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteBackfillReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteBackfillNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteBackfillUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteBackfillForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteBackfillNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteBackfillInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /match2/v1/namespaces/{namespace}/backfill/{backfillID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteBackfillNoContent creates a DeleteBackfillNoContent with default headers values
func NewDeleteBackfillNoContent() *DeleteBackfillNoContent {
	return &DeleteBackfillNoContent{}
}

/*DeleteBackfillNoContent handles this case with default header values.

  Created
*/
type DeleteBackfillNoContent struct {
}

func (o *DeleteBackfillNoContent) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/backfill/{backfillID}][%d] deleteBackfillNoContent ", 204)
}

func (o *DeleteBackfillNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteBackfillUnauthorized creates a DeleteBackfillUnauthorized with default headers values
func NewDeleteBackfillUnauthorized() *DeleteBackfillUnauthorized {
	return &DeleteBackfillUnauthorized{}
}

/*DeleteBackfillUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteBackfillUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteBackfillUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/backfill/{backfillID}][%d] deleteBackfillUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteBackfillUnauthorized) ToJSONString() string {
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

func (o *DeleteBackfillUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteBackfillUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteBackfillForbidden creates a DeleteBackfillForbidden with default headers values
func NewDeleteBackfillForbidden() *DeleteBackfillForbidden {
	return &DeleteBackfillForbidden{}
}

/*DeleteBackfillForbidden handles this case with default header values.

  Forbidden
*/
type DeleteBackfillForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteBackfillForbidden) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/backfill/{backfillID}][%d] deleteBackfillForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteBackfillForbidden) ToJSONString() string {
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

func (o *DeleteBackfillForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteBackfillForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteBackfillNotFound creates a DeleteBackfillNotFound with default headers values
func NewDeleteBackfillNotFound() *DeleteBackfillNotFound {
	return &DeleteBackfillNotFound{}
}

/*DeleteBackfillNotFound handles this case with default header values.

  Not Found
*/
type DeleteBackfillNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteBackfillNotFound) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/backfill/{backfillID}][%d] deleteBackfillNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteBackfillNotFound) ToJSONString() string {
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

func (o *DeleteBackfillNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteBackfillNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteBackfillInternalServerError creates a DeleteBackfillInternalServerError with default headers values
func NewDeleteBackfillInternalServerError() *DeleteBackfillInternalServerError {
	return &DeleteBackfillInternalServerError{}
}

/*DeleteBackfillInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteBackfillInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteBackfillInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/backfill/{backfillID}][%d] deleteBackfillInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteBackfillInternalServerError) ToJSONString() string {
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

func (o *DeleteBackfillInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteBackfillInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
