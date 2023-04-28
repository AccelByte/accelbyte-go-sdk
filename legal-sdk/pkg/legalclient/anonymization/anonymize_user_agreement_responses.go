// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package anonymization

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// AnonymizeUserAgreementReader is a Reader for the AnonymizeUserAgreement structure.
type AnonymizeUserAgreementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AnonymizeUserAgreementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAnonymizeUserAgreementNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAnonymizeUserAgreementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /agreement/admin/users/{userId}/anonymization/agreements returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAnonymizeUserAgreementNoContent creates a AnonymizeUserAgreementNoContent with default headers values
func NewAnonymizeUserAgreementNoContent() *AnonymizeUserAgreementNoContent {
	return &AnonymizeUserAgreementNoContent{}
}

/*AnonymizeUserAgreementNoContent handles this case with default header values.

  successful anonymize
*/
type AnonymizeUserAgreementNoContent struct {
}

func (o *AnonymizeUserAgreementNoContent) Error() string {
	return fmt.Sprintf("[DELETE /agreement/admin/users/{userId}/anonymization/agreements][%d] anonymizeUserAgreementNoContent ", 204)
}

func (o *AnonymizeUserAgreementNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAnonymizeUserAgreementNotFound creates a AnonymizeUserAgreementNotFound with default headers values
func NewAnonymizeUserAgreementNotFound() *AnonymizeUserAgreementNotFound {
	return &AnonymizeUserAgreementNotFound{}
}

/*AnonymizeUserAgreementNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40045</td><td>errors.net.accelbyte.platform.legal.user_agreement_not_found</td></tr></table>
*/
type AnonymizeUserAgreementNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *AnonymizeUserAgreementNotFound) Error() string {
	return fmt.Sprintf("[DELETE /agreement/admin/users/{userId}/anonymization/agreements][%d] anonymizeUserAgreementNotFound  %+v", 404, o.ToJSONString())
}

func (o *AnonymizeUserAgreementNotFound) ToJSONString() string {
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

func (o *AnonymizeUserAgreementNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AnonymizeUserAgreementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
