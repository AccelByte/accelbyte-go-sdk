// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_group

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewAdminGetOfficialGroupContentsV2Params creates a new AdminGetOfficialGroupContentsV2Params object
// with the default values initialized.
func NewAdminGetOfficialGroupContentsV2Params() *AdminGetOfficialGroupContentsV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetOfficialGroupContentsV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetOfficialGroupContentsV2ParamsWithTimeout creates a new AdminGetOfficialGroupContentsV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetOfficialGroupContentsV2ParamsWithTimeout(timeout time.Duration) *AdminGetOfficialGroupContentsV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetOfficialGroupContentsV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminGetOfficialGroupContentsV2ParamsWithContext creates a new AdminGetOfficialGroupContentsV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetOfficialGroupContentsV2ParamsWithContext(ctx context.Context) *AdminGetOfficialGroupContentsV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetOfficialGroupContentsV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminGetOfficialGroupContentsV2ParamsWithHTTPClient creates a new AdminGetOfficialGroupContentsV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetOfficialGroupContentsV2ParamsWithHTTPClient(client *http.Client) *AdminGetOfficialGroupContentsV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetOfficialGroupContentsV2Params{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminGetOfficialGroupContentsV2Params contains all the parameters to send to the API endpoint
for the admin get official group contents v2 operation typically these are written to a http.Request
*/
type AdminGetOfficialGroupContentsV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*GroupID
	  group ID

	*/
	GroupID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  number of content per page

	*/
	Limit *int64
	/*Offset
	  the offset number to retrieve

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get official group contents v2 params
func (o *AdminGetOfficialGroupContentsV2Params) WithTimeout(timeout time.Duration) *AdminGetOfficialGroupContentsV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get official group contents v2 params
func (o *AdminGetOfficialGroupContentsV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get official group contents v2 params
func (o *AdminGetOfficialGroupContentsV2Params) WithContext(ctx context.Context) *AdminGetOfficialGroupContentsV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get official group contents v2 params
func (o *AdminGetOfficialGroupContentsV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get official group contents v2 params
func (o *AdminGetOfficialGroupContentsV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get official group contents v2 params
func (o *AdminGetOfficialGroupContentsV2Params) WithHTTPClient(client *http.Client) *AdminGetOfficialGroupContentsV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get official group contents v2 params
func (o *AdminGetOfficialGroupContentsV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get official group contents v2 params
func (o *AdminGetOfficialGroupContentsV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithGroupID adds the groupID to the admin get official group contents v2 params
func (o *AdminGetOfficialGroupContentsV2Params) WithGroupID(groupID string) *AdminGetOfficialGroupContentsV2Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the admin get official group contents v2 params
func (o *AdminGetOfficialGroupContentsV2Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the admin get official group contents v2 params
func (o *AdminGetOfficialGroupContentsV2Params) WithNamespace(namespace string) *AdminGetOfficialGroupContentsV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get official group contents v2 params
func (o *AdminGetOfficialGroupContentsV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin get official group contents v2 params
func (o *AdminGetOfficialGroupContentsV2Params) WithLimit(limit *int64) *AdminGetOfficialGroupContentsV2Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get official group contents v2 params
func (o *AdminGetOfficialGroupContentsV2Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get official group contents v2 params
func (o *AdminGetOfficialGroupContentsV2Params) WithOffset(offset *int64) *AdminGetOfficialGroupContentsV2Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get official group contents v2 params
func (o *AdminGetOfficialGroupContentsV2Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetOfficialGroupContentsV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param groupId
	if err := r.SetPathParam("groupId", o.GroupID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
