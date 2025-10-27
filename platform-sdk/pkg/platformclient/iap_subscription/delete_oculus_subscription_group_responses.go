// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap_subscription

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

// DeleteOculusSubscriptionGroupReader is a Reader for the DeleteOculusSubscriptionGroup structure.
type DeleteOculusSubscriptionGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteOculusSubscriptionGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteOculusSubscriptionGroupNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteOculusSubscriptionGroupNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewDeleteOculusSubscriptionGroupConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/group/{sku} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteOculusSubscriptionGroupNoContent creates a DeleteOculusSubscriptionGroupNoContent with default headers values
func NewDeleteOculusSubscriptionGroupNoContent() *DeleteOculusSubscriptionGroupNoContent {
	return &DeleteOculusSubscriptionGroupNoContent{}
}

/*DeleteOculusSubscriptionGroupNoContent handles this case with default header values.

  Anonymize successfully
*/
type DeleteOculusSubscriptionGroupNoContent struct {
}

func (o *DeleteOculusSubscriptionGroupNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/group/{sku}][%d] deleteOculusSubscriptionGroupNoContent ", 204)
}

func (o *DeleteOculusSubscriptionGroupNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteOculusSubscriptionGroupNotFound creates a DeleteOculusSubscriptionGroupNotFound with default headers values
func NewDeleteOculusSubscriptionGroupNotFound() *DeleteOculusSubscriptionGroupNotFound {
	return &DeleteOculusSubscriptionGroupNotFound{}
}

/*DeleteOculusSubscriptionGroupNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39152</td><td>Platform [{platform}] - Third-party subscription group [{sku}] not found in namespace [{namespace}]. It may have been deleted.</td></tr></table>
*/
type DeleteOculusSubscriptionGroupNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DeleteOculusSubscriptionGroupNotFound) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/group/{sku}][%d] deleteOculusSubscriptionGroupNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteOculusSubscriptionGroupNotFound) ToJSONString() string {
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

func (o *DeleteOculusSubscriptionGroupNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteOculusSubscriptionGroupNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteOculusSubscriptionGroupConflict creates a DeleteOculusSubscriptionGroupConflict with default headers values
func NewDeleteOculusSubscriptionGroupConflict() *DeleteOculusSubscriptionGroupConflict {
	return &DeleteOculusSubscriptionGroupConflict{}
}

/*DeleteOculusSubscriptionGroupConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39188</td><td>Third-party subscription group [{sku}] on platform [{platform}] in namespace [{namespace}] is already linked to the user's third-party subscription.</td></tr></table>
*/
type DeleteOculusSubscriptionGroupConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DeleteOculusSubscriptionGroupConflict) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/group/{sku}][%d] deleteOculusSubscriptionGroupConflict  %+v", 409, o.ToJSONString())
}

func (o *DeleteOculusSubscriptionGroupConflict) ToJSONString() string {
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

func (o *DeleteOculusSubscriptionGroupConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteOculusSubscriptionGroupConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
