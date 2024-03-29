// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewAdminGetUserByEmailAddressV3Params creates a new AdminGetUserByEmailAddressV3Params object
// with the default values initialized.
func NewAdminGetUserByEmailAddressV3Params() *AdminGetUserByEmailAddressV3Params {
	var ()
	return &AdminGetUserByEmailAddressV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserByEmailAddressV3ParamsWithTimeout creates a new AdminGetUserByEmailAddressV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserByEmailAddressV3ParamsWithTimeout(timeout time.Duration) *AdminGetUserByEmailAddressV3Params {
	var ()
	return &AdminGetUserByEmailAddressV3Params{

		timeout: timeout,
	}
}

// NewAdminGetUserByEmailAddressV3ParamsWithContext creates a new AdminGetUserByEmailAddressV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserByEmailAddressV3ParamsWithContext(ctx context.Context) *AdminGetUserByEmailAddressV3Params {
	var ()
	return &AdminGetUserByEmailAddressV3Params{

		Context: ctx,
	}
}

// NewAdminGetUserByEmailAddressV3ParamsWithHTTPClient creates a new AdminGetUserByEmailAddressV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserByEmailAddressV3ParamsWithHTTPClient(client *http.Client) *AdminGetUserByEmailAddressV3Params {
	var ()
	return &AdminGetUserByEmailAddressV3Params{
		HTTPClient: client,
	}
}

/*AdminGetUserByEmailAddressV3Params contains all the parameters to send to the API endpoint
for the admin get user by email address v3 operation typically these are written to a http.Request
*/
type AdminGetUserByEmailAddressV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*EmailAddress
	  Email Address, should follow OWASP email format

	*/
	EmailAddress *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get user by email address v3 params
func (o *AdminGetUserByEmailAddressV3Params) WithTimeout(timeout time.Duration) *AdminGetUserByEmailAddressV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user by email address v3 params
func (o *AdminGetUserByEmailAddressV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user by email address v3 params
func (o *AdminGetUserByEmailAddressV3Params) WithContext(ctx context.Context) *AdminGetUserByEmailAddressV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user by email address v3 params
func (o *AdminGetUserByEmailAddressV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user by email address v3 params
func (o *AdminGetUserByEmailAddressV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user by email address v3 params
func (o *AdminGetUserByEmailAddressV3Params) WithHTTPClient(client *http.Client) *AdminGetUserByEmailAddressV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user by email address v3 params
func (o *AdminGetUserByEmailAddressV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get user by email address v3 params
func (o *AdminGetUserByEmailAddressV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetUserByEmailAddressV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get user by email address v3 params
func (o *AdminGetUserByEmailAddressV3Params) WithNamespace(namespace string) *AdminGetUserByEmailAddressV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user by email address v3 params
func (o *AdminGetUserByEmailAddressV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEmailAddress adds the emailAddress to the admin get user by email address v3 params
func (o *AdminGetUserByEmailAddressV3Params) WithEmailAddress(emailAddress *string) *AdminGetUserByEmailAddressV3Params {
	o.SetEmailAddress(emailAddress)
	return o
}

// SetEmailAddress adds the emailAddress to the admin get user by email address v3 params
func (o *AdminGetUserByEmailAddressV3Params) SetEmailAddress(emailAddress *string) {
	o.EmailAddress = emailAddress
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserByEmailAddressV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.EmailAddress != nil {

		// query param emailAddress
		var qrEmailAddress string
		if o.EmailAddress != nil {
			qrEmailAddress = *o.EmailAddress
		}
		qEmailAddress := qrEmailAddress
		if qEmailAddress != "" {
			if err := r.SetQueryParam("emailAddress", qEmailAddress); err != nil {
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
