// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// RunGhostCleanerRequestHandlerReader is a Reader for the RunGhostCleanerRequestHandler structure.
type RunGhostCleanerRequestHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RunGhostCleanerRequestHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewRunGhostCleanerRequestHandlerNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRunGhostCleanerRequestHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/admin/namespaces/{namespace}/workers/ghost returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRunGhostCleanerRequestHandlerNoContent creates a RunGhostCleanerRequestHandlerNoContent with default headers values
func NewRunGhostCleanerRequestHandlerNoContent() *RunGhostCleanerRequestHandlerNoContent {
	return &RunGhostCleanerRequestHandlerNoContent{}
}

/*RunGhostCleanerRequestHandlerNoContent handles this case with default header values.

  worker ran
*/
type RunGhostCleanerRequestHandlerNoContent struct {
}

func (o *RunGhostCleanerRequestHandlerNoContent) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/workers/ghost][%d] runGhostCleanerRequestHandlerNoContent ", 204)
}

func (o *RunGhostCleanerRequestHandlerNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRunGhostCleanerRequestHandlerUnauthorized creates a RunGhostCleanerRequestHandlerUnauthorized with default headers values
func NewRunGhostCleanerRequestHandlerUnauthorized() *RunGhostCleanerRequestHandlerUnauthorized {
	return &RunGhostCleanerRequestHandlerUnauthorized{}
}

/*RunGhostCleanerRequestHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type RunGhostCleanerRequestHandlerUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *RunGhostCleanerRequestHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/workers/ghost][%d] runGhostCleanerRequestHandlerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *RunGhostCleanerRequestHandlerUnauthorized) ToJSONString() string {
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

func (o *RunGhostCleanerRequestHandlerUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *RunGhostCleanerRequestHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
