// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reward

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// CheckEventConditionReader is a Reader for the CheckEventCondition structure.
type CheckEventConditionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CheckEventConditionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCheckEventConditionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCheckEventConditionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/rewards/{rewardId}/match returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCheckEventConditionOK creates a CheckEventConditionOK with default headers values
func NewCheckEventConditionOK() *CheckEventConditionOK {
	return &CheckEventConditionOK{}
}

/*CheckEventConditionOK handles this case with default header values.

  successful operation
*/
type CheckEventConditionOK struct {
	Payload *platformclientmodels.ConditionMatchResult
}

func (o *CheckEventConditionOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/rewards/{rewardId}/match][%d] checkEventConditionOK  %+v", 200, o.ToJSONString())
}

func (o *CheckEventConditionOK) ToJSONString() string {
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

func (o *CheckEventConditionOK) GetPayload() *platformclientmodels.ConditionMatchResult {
	return o.Payload
}

func (o *CheckEventConditionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ConditionMatchResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCheckEventConditionNotFound creates a CheckEventConditionNotFound with default headers values
func NewCheckEventConditionNotFound() *CheckEventConditionNotFound {
	return &CheckEventConditionNotFound{}
}

/*CheckEventConditionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>34041</td><td>Reward [{rewardId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type CheckEventConditionNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CheckEventConditionNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/rewards/{rewardId}/match][%d] checkEventConditionNotFound  %+v", 404, o.ToJSONString())
}

func (o *CheckEventConditionNotFound) ToJSONString() string {
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

func (o *CheckEventConditionNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CheckEventConditionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
