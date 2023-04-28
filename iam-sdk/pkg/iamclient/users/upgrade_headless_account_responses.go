// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// UpgradeHeadlessAccountReader is a Reader for the UpgradeHeadlessAccount structure.
type UpgradeHeadlessAccountReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpgradeHeadlessAccountReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpgradeHeadlessAccountOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpgradeHeadlessAccountUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpgradeHeadlessAccountForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpgradeHeadlessAccountConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccount returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpgradeHeadlessAccountOK creates a UpgradeHeadlessAccountOK with default headers values
func NewUpgradeHeadlessAccountOK() *UpgradeHeadlessAccountOK {
	return &UpgradeHeadlessAccountOK{}
}

/*UpgradeHeadlessAccountOK handles this case with default header values.

  OK
*/
type UpgradeHeadlessAccountOK struct {
	Payload *iamclientmodels.ModelUserResponse
}

func (o *UpgradeHeadlessAccountOK) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccount][%d] upgradeHeadlessAccountOK  %+v", 200, o.ToJSONString())
}

func (o *UpgradeHeadlessAccountOK) ToJSONString() string {
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

func (o *UpgradeHeadlessAccountOK) GetPayload() *iamclientmodels.ModelUserResponse {
	return o.Payload
}

func (o *UpgradeHeadlessAccountOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpgradeHeadlessAccountUnauthorized creates a UpgradeHeadlessAccountUnauthorized with default headers values
func NewUpgradeHeadlessAccountUnauthorized() *UpgradeHeadlessAccountUnauthorized {
	return &UpgradeHeadlessAccountUnauthorized{}
}

/*UpgradeHeadlessAccountUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpgradeHeadlessAccountUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpgradeHeadlessAccountUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccount][%d] upgradeHeadlessAccountUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpgradeHeadlessAccountUnauthorized) ToJSONString() string {
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

func (o *UpgradeHeadlessAccountUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpgradeHeadlessAccountUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpgradeHeadlessAccountForbidden creates a UpgradeHeadlessAccountForbidden with default headers values
func NewUpgradeHeadlessAccountForbidden() *UpgradeHeadlessAccountForbidden {
	return &UpgradeHeadlessAccountForbidden{}
}

/*UpgradeHeadlessAccountForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type UpgradeHeadlessAccountForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpgradeHeadlessAccountForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccount][%d] upgradeHeadlessAccountForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpgradeHeadlessAccountForbidden) ToJSONString() string {
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

func (o *UpgradeHeadlessAccountForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpgradeHeadlessAccountForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpgradeHeadlessAccountConflict creates a UpgradeHeadlessAccountConflict with default headers values
func NewUpgradeHeadlessAccountConflict() *UpgradeHeadlessAccountConflict {
	return &UpgradeHeadlessAccountConflict{}
}

/*UpgradeHeadlessAccountConflict handles this case with default header values.

  Conflict
*/
type UpgradeHeadlessAccountConflict struct {
}

func (o *UpgradeHeadlessAccountConflict) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccount][%d] upgradeHeadlessAccountConflict ", 409)
}

func (o *UpgradeHeadlessAccountConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
