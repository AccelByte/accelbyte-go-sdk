// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package anonymization

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// AnonymizeRevocationReader is a Reader for the AnonymizeRevocation structure.
type AnonymizeRevocationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AnonymizeRevocationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAnonymizeRevocationNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/revocation returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAnonymizeRevocationNoContent creates a AnonymizeRevocationNoContent with default headers values
func NewAnonymizeRevocationNoContent() *AnonymizeRevocationNoContent {
	return &AnonymizeRevocationNoContent{}
}

/*AnonymizeRevocationNoContent handles this case with default header values.

  Anonymize successfully
*/
type AnonymizeRevocationNoContent struct {
}

func (o *AnonymizeRevocationNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/revocation][%d] anonymizeRevocationNoContent ", 204)
}

func (o *AnonymizeRevocationNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
