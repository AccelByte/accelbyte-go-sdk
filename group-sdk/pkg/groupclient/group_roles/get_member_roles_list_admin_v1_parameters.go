// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group_roles

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

// NewGetMemberRolesListAdminV1Params creates a new GetMemberRolesListAdminV1Params object
// with the default values initialized.
func NewGetMemberRolesListAdminV1Params() *GetMemberRolesListAdminV1Params {
	var ()
	return &GetMemberRolesListAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetMemberRolesListAdminV1ParamsWithTimeout creates a new GetMemberRolesListAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetMemberRolesListAdminV1ParamsWithTimeout(timeout time.Duration) *GetMemberRolesListAdminV1Params {
	var ()
	return &GetMemberRolesListAdminV1Params{

		timeout: timeout,
	}
}

// NewGetMemberRolesListAdminV1ParamsWithContext creates a new GetMemberRolesListAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetMemberRolesListAdminV1ParamsWithContext(ctx context.Context) *GetMemberRolesListAdminV1Params {
	var ()
	return &GetMemberRolesListAdminV1Params{

		Context: ctx,
	}
}

// NewGetMemberRolesListAdminV1ParamsWithHTTPClient creates a new GetMemberRolesListAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetMemberRolesListAdminV1ParamsWithHTTPClient(client *http.Client) *GetMemberRolesListAdminV1Params {
	var ()
	return &GetMemberRolesListAdminV1Params{
		HTTPClient: client,
	}
}

/*GetMemberRolesListAdminV1Params contains all the parameters to send to the API endpoint
for the get member roles list admin v1 operation typically these are written to a http.Request
*/
type GetMemberRolesListAdminV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Limit
	  size of displayed data

	*/
	Limit *int64
	/*Offset
	  The start position that points to query data

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get member roles list admin v1 params
func (o *GetMemberRolesListAdminV1Params) WithTimeout(timeout time.Duration) *GetMemberRolesListAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get member roles list admin v1 params
func (o *GetMemberRolesListAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get member roles list admin v1 params
func (o *GetMemberRolesListAdminV1Params) WithContext(ctx context.Context) *GetMemberRolesListAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get member roles list admin v1 params
func (o *GetMemberRolesListAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get member roles list admin v1 params
func (o *GetMemberRolesListAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get member roles list admin v1 params
func (o *GetMemberRolesListAdminV1Params) WithHTTPClient(client *http.Client) *GetMemberRolesListAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get member roles list admin v1 params
func (o *GetMemberRolesListAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get member roles list admin v1 params
func (o *GetMemberRolesListAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetMemberRolesListAdminV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get member roles list admin v1 params
func (o *GetMemberRolesListAdminV1Params) WithNamespace(namespace string) *GetMemberRolesListAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get member roles list admin v1 params
func (o *GetMemberRolesListAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get member roles list admin v1 params
func (o *GetMemberRolesListAdminV1Params) WithLimit(limit *int64) *GetMemberRolesListAdminV1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get member roles list admin v1 params
func (o *GetMemberRolesListAdminV1Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get member roles list admin v1 params
func (o *GetMemberRolesListAdminV1Params) WithOffset(offset *int64) *GetMemberRolesListAdminV1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get member roles list admin v1 params
func (o *GetMemberRolesListAdminV1Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetMemberRolesListAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
