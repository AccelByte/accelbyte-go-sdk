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

// DeleteOculusSubscriptionTierReader is a Reader for the DeleteOculusSubscriptionTier structure.
type DeleteOculusSubscriptionTierReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteOculusSubscriptionTierReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteOculusSubscriptionTierNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteOculusSubscriptionTierNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewDeleteOculusSubscriptionTierConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/tier/{sku} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteOculusSubscriptionTierNoContent creates a DeleteOculusSubscriptionTierNoContent with default headers values
func NewDeleteOculusSubscriptionTierNoContent() *DeleteOculusSubscriptionTierNoContent {
	return &DeleteOculusSubscriptionTierNoContent{}
}

/*DeleteOculusSubscriptionTierNoContent handles this case with default header values.

  Anonymize successfully
*/
type DeleteOculusSubscriptionTierNoContent struct {
}

func (o *DeleteOculusSubscriptionTierNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/tier/{sku}][%d] deleteOculusSubscriptionTierNoContent ", 204)
}

func (o *DeleteOculusSubscriptionTierNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteOculusSubscriptionTierNotFound creates a DeleteOculusSubscriptionTierNotFound with default headers values
func NewDeleteOculusSubscriptionTierNotFound() *DeleteOculusSubscriptionTierNotFound {
	return &DeleteOculusSubscriptionTierNotFound{}
}

/*DeleteOculusSubscriptionTierNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39152</td><td>Platform [{platform}] - Third-party subscription group [{sku}] not found in namespace [{namespace}]. It may have been deleted.</td></tr></table>
*/
type DeleteOculusSubscriptionTierNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DeleteOculusSubscriptionTierNotFound) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/tier/{sku}][%d] deleteOculusSubscriptionTierNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteOculusSubscriptionTierNotFound) ToJSONString() string {
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

func (o *DeleteOculusSubscriptionTierNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteOculusSubscriptionTierNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteOculusSubscriptionTierConflict creates a DeleteOculusSubscriptionTierConflict with default headers values
func NewDeleteOculusSubscriptionTierConflict() *DeleteOculusSubscriptionTierConflict {
	return &DeleteOculusSubscriptionTierConflict{}
}

/*DeleteOculusSubscriptionTierConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39188</td><td>Third-party subscription group [{sku}] on platform [{platform}] in namespace [{namespace}] is already linked to the user's third-party subscription.</td></tr></table>
*/
type DeleteOculusSubscriptionTierConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DeleteOculusSubscriptionTierConflict) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/tier/{sku}][%d] deleteOculusSubscriptionTierConflict  %+v", 409, o.ToJSONString())
}

func (o *DeleteOculusSubscriptionTierConflict) ToJSONString() string {
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

func (o *DeleteOculusSubscriptionTierConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteOculusSubscriptionTierConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
