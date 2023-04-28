// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_player_record

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// NewGetOtherPlayerPublicRecordHandlerV1Params creates a new GetOtherPlayerPublicRecordHandlerV1Params object
// with the default values initialized.
func NewGetOtherPlayerPublicRecordHandlerV1Params() *GetOtherPlayerPublicRecordHandlerV1Params {
	var ()
	return &GetOtherPlayerPublicRecordHandlerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetOtherPlayerPublicRecordHandlerV1ParamsWithTimeout creates a new GetOtherPlayerPublicRecordHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetOtherPlayerPublicRecordHandlerV1ParamsWithTimeout(timeout time.Duration) *GetOtherPlayerPublicRecordHandlerV1Params {
	var ()
	return &GetOtherPlayerPublicRecordHandlerV1Params{

		timeout: timeout,
	}
}

// NewGetOtherPlayerPublicRecordHandlerV1ParamsWithContext creates a new GetOtherPlayerPublicRecordHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetOtherPlayerPublicRecordHandlerV1ParamsWithContext(ctx context.Context) *GetOtherPlayerPublicRecordHandlerV1Params {
	var ()
	return &GetOtherPlayerPublicRecordHandlerV1Params{

		Context: ctx,
	}
}

// NewGetOtherPlayerPublicRecordHandlerV1ParamsWithHTTPClient creates a new GetOtherPlayerPublicRecordHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetOtherPlayerPublicRecordHandlerV1ParamsWithHTTPClient(client *http.Client) *GetOtherPlayerPublicRecordHandlerV1Params {
	var ()
	return &GetOtherPlayerPublicRecordHandlerV1Params{
		HTTPClient: client,
	}
}

/*GetOtherPlayerPublicRecordHandlerV1Params contains all the parameters to send to the API endpoint
for the get other player public record handler v1 operation typically these are written to a http.Request
*/
type GetOtherPlayerPublicRecordHandlerV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsBulkGetPlayerRecordsRequest
	/*Namespace
	  namespace of the game

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
}

// WithTimeout adds the timeout to the get other player public record handler v1 params
func (o *GetOtherPlayerPublicRecordHandlerV1Params) WithTimeout(timeout time.Duration) *GetOtherPlayerPublicRecordHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get other player public record handler v1 params
func (o *GetOtherPlayerPublicRecordHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get other player public record handler v1 params
func (o *GetOtherPlayerPublicRecordHandlerV1Params) WithContext(ctx context.Context) *GetOtherPlayerPublicRecordHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get other player public record handler v1 params
func (o *GetOtherPlayerPublicRecordHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get other player public record handler v1 params
func (o *GetOtherPlayerPublicRecordHandlerV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get other player public record handler v1 params
func (o *GetOtherPlayerPublicRecordHandlerV1Params) WithHTTPClient(client *http.Client) *GetOtherPlayerPublicRecordHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get other player public record handler v1 params
func (o *GetOtherPlayerPublicRecordHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get other player public record handler v1 params
func (o *GetOtherPlayerPublicRecordHandlerV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the get other player public record handler v1 params
func (o *GetOtherPlayerPublicRecordHandlerV1Params) WithBody(body *cloudsaveclientmodels.ModelsBulkGetPlayerRecordsRequest) *GetOtherPlayerPublicRecordHandlerV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the get other player public record handler v1 params
func (o *GetOtherPlayerPublicRecordHandlerV1Params) SetBody(body *cloudsaveclientmodels.ModelsBulkGetPlayerRecordsRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the get other player public record handler v1 params
func (o *GetOtherPlayerPublicRecordHandlerV1Params) WithNamespace(namespace string) *GetOtherPlayerPublicRecordHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get other player public record handler v1 params
func (o *GetOtherPlayerPublicRecordHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get other player public record handler v1 params
func (o *GetOtherPlayerPublicRecordHandlerV1Params) WithUserID(userID string) *GetOtherPlayerPublicRecordHandlerV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get other player public record handler v1 params
func (o *GetOtherPlayerPublicRecordHandlerV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetOtherPlayerPublicRecordHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
