// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package season

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// CheckSeasonPurchasableReader is a Reader for the CheckSeasonPurchasable structure.
type CheckSeasonPurchasableReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CheckSeasonPurchasableReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewCheckSeasonPurchasableNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCheckSeasonPurchasableBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCheckSeasonPurchasableNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCheckSeasonPurchasableConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/purchasable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCheckSeasonPurchasableNoContent creates a CheckSeasonPurchasableNoContent with default headers values
func NewCheckSeasonPurchasableNoContent() *CheckSeasonPurchasableNoContent {
	return &CheckSeasonPurchasableNoContent{}
}

/*CheckSeasonPurchasableNoContent handles this case with default header values.

  OK
*/
type CheckSeasonPurchasableNoContent struct {
}

func (o *CheckSeasonPurchasableNoContent) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/purchasable][%d] checkSeasonPurchasableNoContent ", 204)
}

func (o *CheckSeasonPurchasableNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCheckSeasonPurchasableBadRequest creates a CheckSeasonPurchasableBadRequest with default headers values
func NewCheckSeasonPurchasableBadRequest() *CheckSeasonPurchasableBadRequest {
	return &CheckSeasonPurchasableBadRequest{}
}

/*CheckSeasonPurchasableBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type CheckSeasonPurchasableBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *CheckSeasonPurchasableBadRequest) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/purchasable][%d] checkSeasonPurchasableBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CheckSeasonPurchasableBadRequest) ToJSONString() string {
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

func (o *CheckSeasonPurchasableBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CheckSeasonPurchasableBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCheckSeasonPurchasableNotFound creates a CheckSeasonPurchasableNotFound with default headers values
func NewCheckSeasonPurchasableNotFound() *CheckSeasonPurchasableNotFound {
	return &CheckSeasonPurchasableNotFound{}
}

/*CheckSeasonPurchasableNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49147</td><td>Published season does not exist</td></tr></table>
*/
type CheckSeasonPurchasableNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *CheckSeasonPurchasableNotFound) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/purchasable][%d] checkSeasonPurchasableNotFound  %+v", 404, o.ToJSONString())
}

func (o *CheckSeasonPurchasableNotFound) ToJSONString() string {
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

func (o *CheckSeasonPurchasableNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CheckSeasonPurchasableNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCheckSeasonPurchasableConflict creates a CheckSeasonPurchasableConflict with default headers values
func NewCheckSeasonPurchasableConflict() *CheckSeasonPurchasableConflict {
	return &CheckSeasonPurchasableConflict{}
}

/*CheckSeasonPurchasableConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49183</td><td>Pass item does not match published season pass</td></tr><tr><td>49184</td><td>Tier item does not match published season tier</td></tr><tr><td>49185</td><td>Season has not started</td></tr><tr><td>49186</td><td>Pass already owned</td></tr><tr><td>49187</td><td>Exceed max tier count</td></tr></table>
*/
type CheckSeasonPurchasableConflict struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *CheckSeasonPurchasableConflict) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/purchasable][%d] checkSeasonPurchasableConflict  %+v", 409, o.ToJSONString())
}

func (o *CheckSeasonPurchasableConflict) ToJSONString() string {
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

func (o *CheckSeasonPurchasableConflict) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CheckSeasonPurchasableConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
