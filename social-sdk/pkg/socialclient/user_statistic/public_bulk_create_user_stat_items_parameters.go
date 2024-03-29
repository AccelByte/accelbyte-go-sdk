// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// NewPublicBulkCreateUserStatItemsParams creates a new PublicBulkCreateUserStatItemsParams object
// with the default values initialized.
func NewPublicBulkCreateUserStatItemsParams() *PublicBulkCreateUserStatItemsParams {
	var ()
	return &PublicBulkCreateUserStatItemsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicBulkCreateUserStatItemsParamsWithTimeout creates a new PublicBulkCreateUserStatItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicBulkCreateUserStatItemsParamsWithTimeout(timeout time.Duration) *PublicBulkCreateUserStatItemsParams {
	var ()
	return &PublicBulkCreateUserStatItemsParams{

		timeout: timeout,
	}
}

// NewPublicBulkCreateUserStatItemsParamsWithContext creates a new PublicBulkCreateUserStatItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicBulkCreateUserStatItemsParamsWithContext(ctx context.Context) *PublicBulkCreateUserStatItemsParams {
	var ()
	return &PublicBulkCreateUserStatItemsParams{

		Context: ctx,
	}
}

// NewPublicBulkCreateUserStatItemsParamsWithHTTPClient creates a new PublicBulkCreateUserStatItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicBulkCreateUserStatItemsParamsWithHTTPClient(client *http.Client) *PublicBulkCreateUserStatItemsParams {
	var ()
	return &PublicBulkCreateUserStatItemsParams{
		HTTPClient: client,
	}
}

/*PublicBulkCreateUserStatItemsParams contains all the parameters to send to the API endpoint
for the public bulk create user stat items operation typically these are written to a http.Request
*/
type PublicBulkCreateUserStatItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*socialclientmodels.BulkStatItemCreate
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public bulk create user stat items params
func (o *PublicBulkCreateUserStatItemsParams) WithTimeout(timeout time.Duration) *PublicBulkCreateUserStatItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public bulk create user stat items params
func (o *PublicBulkCreateUserStatItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public bulk create user stat items params
func (o *PublicBulkCreateUserStatItemsParams) WithContext(ctx context.Context) *PublicBulkCreateUserStatItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public bulk create user stat items params
func (o *PublicBulkCreateUserStatItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public bulk create user stat items params
func (o *PublicBulkCreateUserStatItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public bulk create user stat items params
func (o *PublicBulkCreateUserStatItemsParams) WithHTTPClient(client *http.Client) *PublicBulkCreateUserStatItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public bulk create user stat items params
func (o *PublicBulkCreateUserStatItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public bulk create user stat items params
func (o *PublicBulkCreateUserStatItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicBulkCreateUserStatItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public bulk create user stat items params
func (o *PublicBulkCreateUserStatItemsParams) WithBody(body []*socialclientmodels.BulkStatItemCreate) *PublicBulkCreateUserStatItemsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public bulk create user stat items params
func (o *PublicBulkCreateUserStatItemsParams) SetBody(body []*socialclientmodels.BulkStatItemCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the public bulk create user stat items params
func (o *PublicBulkCreateUserStatItemsParams) WithNamespace(namespace string) *PublicBulkCreateUserStatItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public bulk create user stat items params
func (o *PublicBulkCreateUserStatItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public bulk create user stat items params
func (o *PublicBulkCreateUserStatItemsParams) WithUserID(userID string) *PublicBulkCreateUserStatItemsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public bulk create user stat items params
func (o *PublicBulkCreateUserStatItemsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicBulkCreateUserStatItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
