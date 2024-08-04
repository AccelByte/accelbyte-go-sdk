// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_profile

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// NewPublicBulkGetUserProfilePublicInfoParams creates a new PublicBulkGetUserProfilePublicInfoParams object
// with the default values initialized.
func NewPublicBulkGetUserProfilePublicInfoParams() *PublicBulkGetUserProfilePublicInfoParams {
	var ()
	return &PublicBulkGetUserProfilePublicInfoParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicBulkGetUserProfilePublicInfoParamsWithTimeout creates a new PublicBulkGetUserProfilePublicInfoParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicBulkGetUserProfilePublicInfoParamsWithTimeout(timeout time.Duration) *PublicBulkGetUserProfilePublicInfoParams {
	var ()
	return &PublicBulkGetUserProfilePublicInfoParams{

		timeout: timeout,
	}
}

// NewPublicBulkGetUserProfilePublicInfoParamsWithContext creates a new PublicBulkGetUserProfilePublicInfoParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicBulkGetUserProfilePublicInfoParamsWithContext(ctx context.Context) *PublicBulkGetUserProfilePublicInfoParams {
	var ()
	return &PublicBulkGetUserProfilePublicInfoParams{

		Context: ctx,
	}
}

// NewPublicBulkGetUserProfilePublicInfoParamsWithHTTPClient creates a new PublicBulkGetUserProfilePublicInfoParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicBulkGetUserProfilePublicInfoParamsWithHTTPClient(client *http.Client) *PublicBulkGetUserProfilePublicInfoParams {
	var ()
	return &PublicBulkGetUserProfilePublicInfoParams{
		HTTPClient: client,
	}
}

/*PublicBulkGetUserProfilePublicInfoParams contains all the parameters to send to the API endpoint
for the public bulk get user profile public info operation typically these are written to a http.Request
*/
type PublicBulkGetUserProfilePublicInfoParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *basicclientmodels.UserProfileBulkRequest
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public bulk get user profile public info params
func (o *PublicBulkGetUserProfilePublicInfoParams) WithTimeout(timeout time.Duration) *PublicBulkGetUserProfilePublicInfoParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public bulk get user profile public info params
func (o *PublicBulkGetUserProfilePublicInfoParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public bulk get user profile public info params
func (o *PublicBulkGetUserProfilePublicInfoParams) WithContext(ctx context.Context) *PublicBulkGetUserProfilePublicInfoParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public bulk get user profile public info params
func (o *PublicBulkGetUserProfilePublicInfoParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public bulk get user profile public info params
func (o *PublicBulkGetUserProfilePublicInfoParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public bulk get user profile public info params
func (o *PublicBulkGetUserProfilePublicInfoParams) WithHTTPClient(client *http.Client) *PublicBulkGetUserProfilePublicInfoParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public bulk get user profile public info params
func (o *PublicBulkGetUserProfilePublicInfoParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public bulk get user profile public info params
func (o *PublicBulkGetUserProfilePublicInfoParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicBulkGetUserProfilePublicInfoParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public bulk get user profile public info params
func (o *PublicBulkGetUserProfilePublicInfoParams) WithBody(body *basicclientmodels.UserProfileBulkRequest) *PublicBulkGetUserProfilePublicInfoParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public bulk get user profile public info params
func (o *PublicBulkGetUserProfilePublicInfoParams) SetBody(body *basicclientmodels.UserProfileBulkRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public bulk get user profile public info params
func (o *PublicBulkGetUserProfilePublicInfoParams) WithNamespace(namespace string) *PublicBulkGetUserProfilePublicInfoParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public bulk get user profile public info params
func (o *PublicBulkGetUserProfilePublicInfoParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicBulkGetUserProfilePublicInfoParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
