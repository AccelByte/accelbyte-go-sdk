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

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAdminUpdateUserEmailAddressV4Params creates a new AdminUpdateUserEmailAddressV4Params object
// with the default values initialized.
func NewAdminUpdateUserEmailAddressV4Params() *AdminUpdateUserEmailAddressV4Params {
	var ()
	return &AdminUpdateUserEmailAddressV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateUserEmailAddressV4ParamsWithTimeout creates a new AdminUpdateUserEmailAddressV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateUserEmailAddressV4ParamsWithTimeout(timeout time.Duration) *AdminUpdateUserEmailAddressV4Params {
	var ()
	return &AdminUpdateUserEmailAddressV4Params{

		timeout: timeout,
	}
}

// NewAdminUpdateUserEmailAddressV4ParamsWithContext creates a new AdminUpdateUserEmailAddressV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateUserEmailAddressV4ParamsWithContext(ctx context.Context) *AdminUpdateUserEmailAddressV4Params {
	var ()
	return &AdminUpdateUserEmailAddressV4Params{

		Context: ctx,
	}
}

// NewAdminUpdateUserEmailAddressV4ParamsWithHTTPClient creates a new AdminUpdateUserEmailAddressV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateUserEmailAddressV4ParamsWithHTTPClient(client *http.Client) *AdminUpdateUserEmailAddressV4Params {
	var ()
	return &AdminUpdateUserEmailAddressV4Params{
		HTTPClient: client,
	}
}

/*AdminUpdateUserEmailAddressV4Params contains all the parameters to send to the API endpoint
for the admin update user email address v4 operation typically these are written to a http.Request
*/
type AdminUpdateUserEmailAddressV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelEmailUpdateRequestV4
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin update user email address v4 params
func (o *AdminUpdateUserEmailAddressV4Params) WithTimeout(timeout time.Duration) *AdminUpdateUserEmailAddressV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update user email address v4 params
func (o *AdminUpdateUserEmailAddressV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update user email address v4 params
func (o *AdminUpdateUserEmailAddressV4Params) WithContext(ctx context.Context) *AdminUpdateUserEmailAddressV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update user email address v4 params
func (o *AdminUpdateUserEmailAddressV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update user email address v4 params
func (o *AdminUpdateUserEmailAddressV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update user email address v4 params
func (o *AdminUpdateUserEmailAddressV4Params) WithHTTPClient(client *http.Client) *AdminUpdateUserEmailAddressV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update user email address v4 params
func (o *AdminUpdateUserEmailAddressV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update user email address v4 params
func (o *AdminUpdateUserEmailAddressV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateUserEmailAddressV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update user email address v4 params
func (o *AdminUpdateUserEmailAddressV4Params) WithBody(body *iamclientmodels.ModelEmailUpdateRequestV4) *AdminUpdateUserEmailAddressV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update user email address v4 params
func (o *AdminUpdateUserEmailAddressV4Params) SetBody(body *iamclientmodels.ModelEmailUpdateRequestV4) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update user email address v4 params
func (o *AdminUpdateUserEmailAddressV4Params) WithNamespace(namespace string) *AdminUpdateUserEmailAddressV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update user email address v4 params
func (o *AdminUpdateUserEmailAddressV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin update user email address v4 params
func (o *AdminUpdateUserEmailAddressV4Params) WithUserID(userID string) *AdminUpdateUserEmailAddressV4Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin update user email address v4 params
func (o *AdminUpdateUserEmailAddressV4Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateUserEmailAddressV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
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
