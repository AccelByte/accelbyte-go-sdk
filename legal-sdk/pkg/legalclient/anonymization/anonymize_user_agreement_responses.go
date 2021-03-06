// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package anonymization

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

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

  Anonymize successfully
*/
type AnonymizeUserAgreementNoContent struct {
}

func (o *AnonymizeUserAgreementNoContent) Error() string {
	return fmt.Sprintf("[DELETE /agreement/admin/users/{userId}/anonymization/agreements][%d] anonymizeUserAgreementNoContent ", 204)
}

func (o *AnonymizeUserAgreementNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAnonymizeUserAgreementNotFound creates a AnonymizeUserAgreementNotFound with default headers values
func NewAnonymizeUserAgreementNotFound() *AnonymizeUserAgreementNotFound {
	return &AnonymizeUserAgreementNotFound{}
}

/*AnonymizeUserAgreementNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40047</td><td>errors.net.accelbyte.platform.legal.user_agreement_not_found</td></tr></table>
*/
type AnonymizeUserAgreementNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *AnonymizeUserAgreementNotFound) Error() string {
	return fmt.Sprintf("[DELETE /agreement/admin/users/{userId}/anonymization/agreements][%d] anonymizeUserAgreementNotFound  %+v", 404, o.Payload)
}

func (o *AnonymizeUserAgreementNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AnonymizeUserAgreementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
