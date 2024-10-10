// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_info

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// InvalidateUserInfoCacheReader is a Reader for the InvalidateUserInfoCache structure.
type InvalidateUserInfoCacheReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *InvalidateUserInfoCacheReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewInvalidateUserInfoCacheNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /agreement/admin/userInfo returns an error %d: %s", response.Code(), string(data))
	}
}

// NewInvalidateUserInfoCacheNoContent creates a InvalidateUserInfoCacheNoContent with default headers values
func NewInvalidateUserInfoCacheNoContent() *InvalidateUserInfoCacheNoContent {
	return &InvalidateUserInfoCacheNoContent{}
}

/*InvalidateUserInfoCacheNoContent handles this case with default header values.

  Successful operation
*/
type InvalidateUserInfoCacheNoContent struct {
}

func (o *InvalidateUserInfoCacheNoContent) Error() string {
	return fmt.Sprintf("[DELETE /agreement/admin/userInfo][%d] invalidateUserInfoCacheNoContent ", 204)
}

func (o *InvalidateUserInfoCacheNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
