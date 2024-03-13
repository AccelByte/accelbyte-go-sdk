// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// NewAdminListInvitationHistoriesV4Params creates a new AdminListInvitationHistoriesV4Params object
// with the default values initialized.
func NewAdminListInvitationHistoriesV4Params() *AdminListInvitationHistoriesV4Params {
	var ()
	return &AdminListInvitationHistoriesV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListInvitationHistoriesV4ParamsWithTimeout creates a new AdminListInvitationHistoriesV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListInvitationHistoriesV4ParamsWithTimeout(timeout time.Duration) *AdminListInvitationHistoriesV4Params {
	var ()
	return &AdminListInvitationHistoriesV4Params{

		timeout: timeout,
	}
}

// NewAdminListInvitationHistoriesV4ParamsWithContext creates a new AdminListInvitationHistoriesV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListInvitationHistoriesV4ParamsWithContext(ctx context.Context) *AdminListInvitationHistoriesV4Params {
	var ()
	return &AdminListInvitationHistoriesV4Params{

		Context: ctx,
	}
}

// NewAdminListInvitationHistoriesV4ParamsWithHTTPClient creates a new AdminListInvitationHistoriesV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListInvitationHistoriesV4ParamsWithHTTPClient(client *http.Client) *AdminListInvitationHistoriesV4Params {
	var ()
	return &AdminListInvitationHistoriesV4Params{
		HTTPClient: client,
	}
}

/*AdminListInvitationHistoriesV4Params contains all the parameters to send to the API endpoint
for the admin list invitation histories v4 operation typically these are written to a http.Request
*/
type AdminListInvitationHistoriesV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Limit
	  the maximum number of data that may be returned (1...100), default 100

	*/
	Limit *int64
	/*Namespace
	  only accept studio namespace

	*/
	Namespace *string
	/*Offset
	  Offset, default 0

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin list invitation histories v4 params
func (o *AdminListInvitationHistoriesV4Params) WithTimeout(timeout time.Duration) *AdminListInvitationHistoriesV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list invitation histories v4 params
func (o *AdminListInvitationHistoriesV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list invitation histories v4 params
func (o *AdminListInvitationHistoriesV4Params) WithContext(ctx context.Context) *AdminListInvitationHistoriesV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list invitation histories v4 params
func (o *AdminListInvitationHistoriesV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list invitation histories v4 params
func (o *AdminListInvitationHistoriesV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list invitation histories v4 params
func (o *AdminListInvitationHistoriesV4Params) WithHTTPClient(client *http.Client) *AdminListInvitationHistoriesV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list invitation histories v4 params
func (o *AdminListInvitationHistoriesV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list invitation histories v4 params
func (o *AdminListInvitationHistoriesV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListInvitationHistoriesV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithLimit adds the limit to the admin list invitation histories v4 params
func (o *AdminListInvitationHistoriesV4Params) WithLimit(limit *int64) *AdminListInvitationHistoriesV4Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list invitation histories v4 params
func (o *AdminListInvitationHistoriesV4Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithNamespace adds the namespace to the admin list invitation histories v4 params
func (o *AdminListInvitationHistoriesV4Params) WithNamespace(namespace *string) *AdminListInvitationHistoriesV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list invitation histories v4 params
func (o *AdminListInvitationHistoriesV4Params) SetNamespace(namespace *string) {
	o.Namespace = namespace
}

// WithOffset adds the offset to the admin list invitation histories v4 params
func (o *AdminListInvitationHistoriesV4Params) WithOffset(offset *int64) *AdminListInvitationHistoriesV4Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list invitation histories v4 params
func (o *AdminListInvitationHistoriesV4Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListInvitationHistoriesV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	if o.Namespace != nil {

		// query param namespace
		var qrNamespace string
		if o.Namespace != nil {
			qrNamespace = *o.Namespace
		}
		qNamespace := qrNamespace
		if qNamespace != "" {
			if err := r.SetQueryParam("namespace", qNamespace); err != nil {
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
