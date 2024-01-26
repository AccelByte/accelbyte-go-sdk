// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package roles

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

// NewAdminGetRolesV4Params creates a new AdminGetRolesV4Params object
// with the default values initialized.
func NewAdminGetRolesV4Params() *AdminGetRolesV4Params {
	var ()
	return &AdminGetRolesV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetRolesV4ParamsWithTimeout creates a new AdminGetRolesV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetRolesV4ParamsWithTimeout(timeout time.Duration) *AdminGetRolesV4Params {
	var ()
	return &AdminGetRolesV4Params{

		timeout: timeout,
	}
}

// NewAdminGetRolesV4ParamsWithContext creates a new AdminGetRolesV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetRolesV4ParamsWithContext(ctx context.Context) *AdminGetRolesV4Params {
	var ()
	return &AdminGetRolesV4Params{

		Context: ctx,
	}
}

// NewAdminGetRolesV4ParamsWithHTTPClient creates a new AdminGetRolesV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetRolesV4ParamsWithHTTPClient(client *http.Client) *AdminGetRolesV4Params {
	var ()
	return &AdminGetRolesV4Params{
		HTTPClient: client,
	}
}

/*AdminGetRolesV4Params contains all the parameters to send to the API endpoint
for the admin get roles v4 operation typically these are written to a http.Request
*/
type AdminGetRolesV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*AdminRole
	  - true if the expected result should only returns records with adminRole = true
	          - false if the expected result should only returns records with adminRole = false
	          - empty (omitted) if the expected result should returns records with no wildcard filter at all

	*/
	AdminRole *bool
	/*IsWildcard
	  - true if the expected result should only returns records with wildcard = true
	          - false if the expected result should only returns records with wildcard = false
	          - empty (omitted) if the expected result should returns records with no wildcard filter at all

	*/
	IsWildcard *bool
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64
	/*Offset
	  the count to skip

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get roles v4 params
func (o *AdminGetRolesV4Params) WithTimeout(timeout time.Duration) *AdminGetRolesV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get roles v4 params
func (o *AdminGetRolesV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get roles v4 params
func (o *AdminGetRolesV4Params) WithContext(ctx context.Context) *AdminGetRolesV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get roles v4 params
func (o *AdminGetRolesV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get roles v4 params
func (o *AdminGetRolesV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get roles v4 params
func (o *AdminGetRolesV4Params) WithHTTPClient(client *http.Client) *AdminGetRolesV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get roles v4 params
func (o *AdminGetRolesV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get roles v4 params
func (o *AdminGetRolesV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetRolesV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAdminRole adds the adminRole to the admin get roles v4 params
func (o *AdminGetRolesV4Params) WithAdminRole(adminRole *bool) *AdminGetRolesV4Params {
	o.SetAdminRole(adminRole)
	return o
}

// SetAdminRole adds the adminRole to the admin get roles v4 params
func (o *AdminGetRolesV4Params) SetAdminRole(adminRole *bool) {
	o.AdminRole = adminRole
}

// WithIsWildcard adds the isWildcard to the admin get roles v4 params
func (o *AdminGetRolesV4Params) WithIsWildcard(isWildcard *bool) *AdminGetRolesV4Params {
	o.SetIsWildcard(isWildcard)
	return o
}

// SetIsWildcard adds the isWildcard to the admin get roles v4 params
func (o *AdminGetRolesV4Params) SetIsWildcard(isWildcard *bool) {
	o.IsWildcard = isWildcard
}

// WithLimit adds the limit to the admin get roles v4 params
func (o *AdminGetRolesV4Params) WithLimit(limit *int64) *AdminGetRolesV4Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get roles v4 params
func (o *AdminGetRolesV4Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get roles v4 params
func (o *AdminGetRolesV4Params) WithOffset(offset *int64) *AdminGetRolesV4Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get roles v4 params
func (o *AdminGetRolesV4Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetRolesV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.AdminRole != nil {

		// query param adminRole
		var qrAdminRole bool
		if o.AdminRole != nil {
			qrAdminRole = *o.AdminRole
		}
		qAdminRole := swag.FormatBool(qrAdminRole)
		if qAdminRole != "" {
			if err := r.SetQueryParam("adminRole", qAdminRole); err != nil {
				return err
			}
		}

	}

	if o.IsWildcard != nil {

		// query param isWildcard
		var qrIsWildcard bool
		if o.IsWildcard != nil {
			qrIsWildcard = *o.IsWildcard
		}
		qIsWildcard := swag.FormatBool(qrIsWildcard)
		if qIsWildcard != "" {
			if err := r.SetQueryParam("isWildcard", qIsWildcard); err != nil {
				return err
			}
		}

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
