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

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewPublicBulkGetUsersParams creates a new PublicBulkGetUsersParams object
// with the default values initialized.
func NewPublicBulkGetUsersParams() *PublicBulkGetUsersParams {
	var ()
	return &PublicBulkGetUsersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicBulkGetUsersParamsWithTimeout creates a new PublicBulkGetUsersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicBulkGetUsersParamsWithTimeout(timeout time.Duration) *PublicBulkGetUsersParams {
	var ()
	return &PublicBulkGetUsersParams{

		timeout: timeout,
	}
}

// NewPublicBulkGetUsersParamsWithContext creates a new PublicBulkGetUsersParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicBulkGetUsersParamsWithContext(ctx context.Context) *PublicBulkGetUsersParams {
	var ()
	return &PublicBulkGetUsersParams{

		Context: ctx,
	}
}

// NewPublicBulkGetUsersParamsWithHTTPClient creates a new PublicBulkGetUsersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicBulkGetUsersParamsWithHTTPClient(client *http.Client) *PublicBulkGetUsersParams {
	var ()
	return &PublicBulkGetUsersParams{
		HTTPClient: client,
	}
}

/*PublicBulkGetUsersParams contains all the parameters to send to the API endpoint
for the public bulk get users operation typically these are written to a http.Request
*/
type PublicBulkGetUsersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUserIDsRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public bulk get users params
func (o *PublicBulkGetUsersParams) WithTimeout(timeout time.Duration) *PublicBulkGetUsersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public bulk get users params
func (o *PublicBulkGetUsersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public bulk get users params
func (o *PublicBulkGetUsersParams) WithContext(ctx context.Context) *PublicBulkGetUsersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public bulk get users params
func (o *PublicBulkGetUsersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public bulk get users params
func (o *PublicBulkGetUsersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public bulk get users params
func (o *PublicBulkGetUsersParams) WithHTTPClient(client *http.Client) *PublicBulkGetUsersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public bulk get users params
func (o *PublicBulkGetUsersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public bulk get users params
func (o *PublicBulkGetUsersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicBulkGetUsersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public bulk get users params
func (o *PublicBulkGetUsersParams) WithBody(body *iamclientmodels.ModelUserIDsRequest) *PublicBulkGetUsersParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public bulk get users params
func (o *PublicBulkGetUsersParams) SetBody(body *iamclientmodels.ModelUserIDsRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public bulk get users params
func (o *PublicBulkGetUsersParams) WithNamespace(namespace string) *PublicBulkGetUsersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public bulk get users params
func (o *PublicBulkGetUsersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicBulkGetUsersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
