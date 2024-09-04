// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// PublicReconcilePlayStationStoreWithMultipleServiceLabelsReader is a Reader for the PublicReconcilePlayStationStoreWithMultipleServiceLabels structure.
type PublicReconcilePlayStationStoreWithMultipleServiceLabelsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync/multiServiceLabels returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsOK creates a PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK with default headers values
func NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsOK() *PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK {
	return &PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK{}
}

/*PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK handles this case with default header values.

  successful operation
*/
type PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK struct {
	Payload []*platformclientmodels.PlayStationReconcileResult
}

func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync/multiServiceLabels][%d] publicReconcilePlayStationStoreWithMultipleServiceLabelsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK) ToJSONString() string {
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

func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK) GetPayload() []*platformclientmodels.PlayStationReconcileResult {
	return o.Payload
}

func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest creates a PublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest with default headers values
func NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest() *PublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest {
	return &PublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest{}
}

/*PublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39125</td><td>Invalid platform [{platformId}] user token</td></tr><tr><td>39126</td><td>User id [{}] in namespace [{}] doesn't link platform [{}]</td></tr><tr><td>39127</td><td>Invalid service label [{serviceLabel}]</td></tr><tr><td>39132</td><td>Bad request for playstation under namespace [{namespace}], reason: [{reason}].</td></tr>
*/
type PublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync/multiServiceLabels][%d] publicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest) ToJSONString() string {
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

func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsNotFound creates a PublicReconcilePlayStationStoreWithMultipleServiceLabelsNotFound with default headers values
func NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsNotFound() *PublicReconcilePlayStationStoreWithMultipleServiceLabelsNotFound {
	return &PublicReconcilePlayStationStoreWithMultipleServiceLabelsNotFound{}
}

/*PublicReconcilePlayStationStoreWithMultipleServiceLabelsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39143</td><td>PlayStation IAP config not found in namespace [{namespace}]</td></tr></table>
*/
type PublicReconcilePlayStationStoreWithMultipleServiceLabelsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync/multiServiceLabels][%d] publicReconcilePlayStationStoreWithMultipleServiceLabelsNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsNotFound) ToJSONString() string {
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

func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicReconcilePlayStationStoreWithMultipleServiceLabelsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
