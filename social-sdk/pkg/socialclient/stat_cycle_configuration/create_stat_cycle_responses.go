// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_cycle_configuration

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// CreateStatCycleReader is a Reader for the CreateStatCycle structure.
type CreateStatCycleReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateStatCycleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateStatCycleCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateStatCycleBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /social/v1/admin/namespaces/{namespace}/statCycles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateStatCycleCreated creates a CreateStatCycleCreated with default headers values
func NewCreateStatCycleCreated() *CreateStatCycleCreated {
	return &CreateStatCycleCreated{}
}

/*CreateStatCycleCreated handles this case with default header values.

  successful operation
*/
type CreateStatCycleCreated struct {
	Payload *socialclientmodels.StatCycleInfo
}

func (o *CreateStatCycleCreated) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles][%d] createStatCycleCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateStatCycleCreated) ToJSONString() string {
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

func (o *CreateStatCycleCreated) GetPayload() *socialclientmodels.StatCycleInfo {
	return o.Payload
}

func (o *CreateStatCycleCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.StatCycleInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateStatCycleBadRequest creates a CreateStatCycleBadRequest with default headers values
func NewCreateStatCycleBadRequest() *CreateStatCycleBadRequest {
	return &CreateStatCycleBadRequest{}
}

/*CreateStatCycleBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12225</td><td>Invalid time range</td></tr><tr><td>12226</td><td>Invalid date [{date}] of month [{month}]</td></tr></table>
*/
type CreateStatCycleBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *CreateStatCycleBadRequest) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles][%d] createStatCycleBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateStatCycleBadRequest) ToJSONString() string {
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

func (o *CreateStatCycleBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateStatCycleBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
