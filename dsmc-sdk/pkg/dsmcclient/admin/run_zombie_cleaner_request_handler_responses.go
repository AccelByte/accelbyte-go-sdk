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

// RunZombieCleanerRequestHandlerReader is a Reader for the RunZombieCleanerRequestHandler structure.
type RunZombieCleanerRequestHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RunZombieCleanerRequestHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewRunZombieCleanerRequestHandlerNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRunZombieCleanerRequestHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/admin/namespaces/{namespace}/workers/zombie returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRunZombieCleanerRequestHandlerNoContent creates a RunZombieCleanerRequestHandlerNoContent with default headers values
func NewRunZombieCleanerRequestHandlerNoContent() *RunZombieCleanerRequestHandlerNoContent {
	return &RunZombieCleanerRequestHandlerNoContent{}
}

/*RunZombieCleanerRequestHandlerNoContent handles this case with default header values.

  worker ran
*/
type RunZombieCleanerRequestHandlerNoContent struct {
}

func (o *RunZombieCleanerRequestHandlerNoContent) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/workers/zombie][%d] runZombieCleanerRequestHandlerNoContent ", 204)
}

func (o *RunZombieCleanerRequestHandlerNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRunZombieCleanerRequestHandlerUnauthorized creates a RunZombieCleanerRequestHandlerUnauthorized with default headers values
func NewRunZombieCleanerRequestHandlerUnauthorized() *RunZombieCleanerRequestHandlerUnauthorized {
	return &RunZombieCleanerRequestHandlerUnauthorized{}
}

/*RunZombieCleanerRequestHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type RunZombieCleanerRequestHandlerUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *RunZombieCleanerRequestHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/workers/zombie][%d] runZombieCleanerRequestHandlerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *RunZombieCleanerRequestHandlerUnauthorized) ToJSONString() string {
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

func (o *RunZombieCleanerRequestHandlerUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *RunZombieCleanerRequestHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
